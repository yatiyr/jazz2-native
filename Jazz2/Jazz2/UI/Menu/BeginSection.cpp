﻿#include "BeginSection.h"
#include "EpisodeSelectSection.h"
#include "StartGameOptionsSection.h"
#include "OptionsSection.h"
#include "AboutSection.h"
#include "MainMenu.h"

#if defined(SHAREWARE_DEMO_ONLY)
#	if defined(DEATH_TARGET_EMSCRIPTEN)
#		include "ImportSection.h"
#	endif
#	include "../../PreferencesCache.h"
#endif

#include "../../../nCine/Application.h"

namespace Jazz2::UI::Menu
{
	BeginSection::BeginSection()
		:
		_selectedIndex(0),
		_animation(0.0f),
		_isVerified(true)
	{
#if defined(SHAREWARE_DEMO_ONLY)
#	if defined(DEATH_TARGET_EMSCRIPTEN)
		_items[(int)Item::Import].Name = "Import Episodes"_s;
#	endif
#else
		_items[(int)Item::PlayStory].Name = "Play Story"_s;
#endif
		_items[(int)Item::Options].Name = "Options"_s;
		_items[(int)Item::About].Name = "About"_s;
#if !defined(DEATH_TARGET_ANDROID) && !defined(DEATH_TARGET_EMSCRIPTEN)
		_items[(int)Item::Quit].Name = "Quit"_s;
#endif
	}

	void BeginSection::OnShow(IMenuContainer* root)
	{
		MenuSection::OnShow(root);

		_animation = 0.0f;

#if defined(SHAREWARE_DEMO_ONLY)
		if (PreferencesCache::UnlockedEpisodes != UnlockableEpisodes::None) {
			_items[(int)Item::PlayStory].Name = "Play Story"_s;
		} else {
			_items[(int)Item::PlayStory].Name = "Play Shareware Demo"_s;
		}
#endif

		if (auto mainMenu = dynamic_cast<MainMenu*>(_root)) {
			_isVerified = mainMenu->_root->IsPlayable();
		}
	}

	void BeginSection::OnUpdate(float timeMult)
	{
		if (_animation < 1.0f) {
			_animation = std::min(_animation + timeMult * 0.016f, 1.0f);
		}

		if (_root->ActionHit(PlayerActions::Fire)) {
			ExecuteSelected();
		} else if (_root->ActionHit(PlayerActions::Menu)) {
#if !defined(DEATH_TARGET_ANDROID) && !defined(DEATH_TARGET_EMSCRIPTEN)
			if (_selectedIndex != (int)Item::Quit) {
				_root->PlaySfx("MenuSelect"_s, 0.6f);
				_animation = 0.0f;
				_selectedIndex = (int)Item::Quit;
			}
#endif
		} else if (_root->ActionHit(PlayerActions::Up)) {
			_root->PlaySfx("MenuSelect"_s, 0.5f);
			_animation = 0.0f;
			if (_selectedIndex > 0) {
				_selectedIndex--;
			} else {
				_selectedIndex = (int)Item::Count - 1;
			}
		} else if (_root->ActionHit(PlayerActions::Down)) {
			_root->PlaySfx("MenuSelect"_s, 0.5f);
			_animation = 0.0f;
			if (_selectedIndex < (int)Item::Count - 1) {
				_selectedIndex++;
			} else {
				_selectedIndex = 0;
			}
		}
	}

	void BeginSection::OnDraw(Canvas* canvas)
	{
		Vector2i viewSize = canvas->ViewSize;
		Vector2f center = Vector2f(viewSize.X * 0.5f, viewSize.Y * 0.5f * (1.0f - 0.048f * (int)Item::Count));
		int charOffset = 0;

		if (!_isVerified) {
			_root->DrawStringShadow("Make sure Jazz Jackrabbit 2 files are present in \"Source\" directory!", charOffset, center.X, center.Y * 0.75f, IMenuContainer::FontLayer,
				Alignment::Center, Colorf(0.45f, 0.27f, 0.22f, 0.5f), 1.0f, 0.7f, 0.4f, 0.4f, 0.4f, 0.8f);
		}

		for (int i = 0; i < (int)Item::Count; i++) {
			_items[i].TouchY = center.Y;

			if (i == 0 && !_isVerified) {
				if (_selectedIndex == i) {
					_root->DrawElement("MenuGlow"_s, 0, center.X, center.Y, IMenuContainer::MainLayer, Alignment::Center, Colorf(1.0f, 1.0f, 1.0f, 0.2f), (_items[i].Name.size() + 3) * 0.5f, 4.0f, true);
				}

				_root->DrawStringShadow(_items[i].Name, charOffset, center.X, center.Y, IMenuContainer::FontLayer,
					Alignment::Center, Colorf(0.51f, 0.51f, 0.51f, 0.35f), 0.9f);
			} else if (_selectedIndex == i) {
				float size = 0.5f + IMenuContainer::EaseOutElastic(_animation) * 0.6f;

				_root->DrawElement("MenuGlow"_s, 0, center.X, center.Y, IMenuContainer::MainLayer, Alignment::Center, Colorf(1.0f, 1.0f, 1.0f, 0.4f * size), (_items[i].Name.size() + 3) * 0.5f * size, 4.0f * size, true);

				_root->DrawStringShadow(_items[i].Name, charOffset, center.X, center.Y, IMenuContainer::FontLayer + 10,
					Alignment::Center, Font::RandomColor, size, 0.7f, 1.1f, 1.1f, 0.4f, 0.9f);
			} else {
				_root->DrawStringShadow(_items[i].Name, charOffset, center.X, center.Y, IMenuContainer::FontLayer,
					Alignment::Center, Font::DefaultColor, 0.9f);
			}

			center.Y += 34.0f + 32.0f * (1.0f - 0.15f * (int)Item::Count);
		}
	}

	void BeginSection::OnTouchEvent(const nCine::TouchEvent& event, const Vector2i& viewSize)
	{
		if (event.type == TouchEventType::Down) {
			int pointerIndex = event.findPointerIndex(event.actionIndex);
			if (pointerIndex != -1) {
				float x = event.pointers[pointerIndex].x;
				float y = event.pointers[pointerIndex].y * (float)viewSize.Y;

				for (int i = 0; i < (int)Item::Count; i++) {
					if (std::abs(x - 0.5f) < 0.22f && std::abs(y - _items[i].TouchY) < 30.0f) {
						if (_selectedIndex == i) {
							ExecuteSelected();
						} else {
							_root->PlaySfx("MenuSelect"_s, 0.5f);
							_animation = 0.0f;
							_selectedIndex = i;
						}
						break;
					}
				}
			}
		}
	}

	void BeginSection::ExecuteSelected()
	{
		_root->PlaySfx("MenuSelect"_s, 0.6f);

		switch (_selectedIndex) {
			case (int)Item::PlayStory:
				if (_isVerified) {
#if defined(SHAREWARE_DEMO_ONLY)
					if (PreferencesCache::UnlockedEpisodes != UnlockableEpisodes::None) {
						_root->SwitchToSection<EpisodeSelectSection>();
					} else {
						_root->SwitchToSectionPtr(std::make_unique<StartGameOptionsSection>("share"_s, "01_share1"_s, nullptr));
					}
#else
					_root->SwitchToSection<EpisodeSelectSection>();
#endif
				}
				break;
#if defined(SHAREWARE_DEMO_ONLY) && defined(DEATH_TARGET_EMSCRIPTEN)
			case (int)Item::Import: _root->SwitchToSection<ImportSection>(); break;
#endif
			case (int)Item::Options: _root->SwitchToSection<OptionsSection>(); break;
			case (int)Item::About: _root->SwitchToSection<AboutSection>(); break;
#if !defined(DEATH_TARGET_ANDROID) && !defined(DEATH_TARGET_EMSCRIPTEN)
			case (int)Item::Quit: theApplication().quit(); break;
#endif
		}
	}
}