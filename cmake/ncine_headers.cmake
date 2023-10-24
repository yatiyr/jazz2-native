set(HEADERS
	${NCINE_SOURCE_DIR}/Shared/Asserts.h
	${NCINE_SOURCE_DIR}/Shared/Common.h
	${NCINE_SOURCE_DIR}/Shared/CommonBase.h
	${NCINE_SOURCE_DIR}/Shared/CommonWindows.h
	${NCINE_SOURCE_DIR}/Shared/Environment.h
	${NCINE_SOURCE_DIR}/Shared/Cpu.h
	${NCINE_SOURCE_DIR}/Shared/IntrinsicsAvx.h
	${NCINE_SOURCE_DIR}/Shared/IntrinsicsSse2.h
	${NCINE_SOURCE_DIR}/Shared/IntrinsicsSse3.h
	${NCINE_SOURCE_DIR}/Shared/IntrinsicsSse4.h
	${NCINE_SOURCE_DIR}/Shared/IntrinsicsSsse3.h
	${NCINE_SOURCE_DIR}/Shared/Utf8.h
	${NCINE_SOURCE_DIR}/Shared/Containers/Array.h
	${NCINE_SOURCE_DIR}/Shared/Containers/ArrayView.h
	${NCINE_SOURCE_DIR}/Shared/Containers/DateTime.h
	${NCINE_SOURCE_DIR}/Shared/Containers/GrowableArray.h
	${NCINE_SOURCE_DIR}/Shared/Containers/Pair.h
	${NCINE_SOURCE_DIR}/Shared/Containers/Reference.h
	${NCINE_SOURCE_DIR}/Shared/Containers/SmallVector.h
	${NCINE_SOURCE_DIR}/Shared/Containers/StaticArray.h
	${NCINE_SOURCE_DIR}/Shared/Containers/String.h
	${NCINE_SOURCE_DIR}/Shared/Containers/StringStlView.h
	${NCINE_SOURCE_DIR}/Shared/Containers/StringView.h
	${NCINE_SOURCE_DIR}/Shared/Containers/Tags.h
	${NCINE_SOURCE_DIR}/Shared/IO/AndroidAssetStream.h
	${NCINE_SOURCE_DIR}/Shared/IO/FileStream.h
	${NCINE_SOURCE_DIR}/Shared/IO/FileSystem.h
	${NCINE_SOURCE_DIR}/Shared/IO/HttpRequest.h
	${NCINE_SOURCE_DIR}/Shared/IO/MemoryStream.h
	${NCINE_SOURCE_DIR}/Shared/IO/Stream.h
	${NCINE_SOURCE_DIR}/Shared/Threading/Interlocked.h
)

list(APPEND HEADERS
	${NCINE_SOURCE_DIR}/nCine/AppConfiguration.h
	${NCINE_SOURCE_DIR}/nCine/Application.h
	${NCINE_SOURCE_DIR}/nCine/ArrayIndexer.h
	${NCINE_SOURCE_DIR}/nCine/CommonConstants.h
	${NCINE_SOURCE_DIR}/nCine/CommonHeaders.h
	${NCINE_SOURCE_DIR}/nCine/I18n.h
	${NCINE_SOURCE_DIR}/nCine/IAppEventHandler.h
	${NCINE_SOURCE_DIR}/nCine/IIndexer.h
	${NCINE_SOURCE_DIR}/nCine/ServiceLocator.h
	${NCINE_SOURCE_DIR}/nCine/Audio/IAudioDevice.h
	${NCINE_SOURCE_DIR}/nCine/Audio/IAudioLoader.h
	${NCINE_SOURCE_DIR}/nCine/Audio/IAudioPlayer.h
	${NCINE_SOURCE_DIR}/nCine/Audio/IAudioReader.h
	${NCINE_SOURCE_DIR}/nCine/Base/Algorithms.h
	${NCINE_SOURCE_DIR}/nCine/Base/BitArray.h
	${NCINE_SOURCE_DIR}/nCine/Base/BitSet.h
	${NCINE_SOURCE_DIR}/nCine/Base/Clock.h
	${NCINE_SOURCE_DIR}/nCine/Base/FrameTimer.h
	${NCINE_SOURCE_DIR}/nCine/Base/HashFunctions.h
	${NCINE_SOURCE_DIR}/nCine/Base/HashMap.h
	${NCINE_SOURCE_DIR}/nCine/Base/Iterator.h
	${NCINE_SOURCE_DIR}/nCine/Base/Object.h
	${NCINE_SOURCE_DIR}/nCine/Base/Random.h
	${NCINE_SOURCE_DIR}/nCine/Base/ReverseIterator.h
	${NCINE_SOURCE_DIR}/nCine/Base/StaticHashMap.h
	${NCINE_SOURCE_DIR}/nCine/Base/StaticHashMapIterator.h
	${NCINE_SOURCE_DIR}/nCine/Base/Task.h
	${NCINE_SOURCE_DIR}/nCine/Base/Timer.h
	${NCINE_SOURCE_DIR}/nCine/Base/TimeStamp.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/AnimatedSprite.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/BaseSprite.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/BinaryShaderCache.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/Camera.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/DisplayMode.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/DrawableNode.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/Geometry.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GfxCapabilities.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/IGfxCapabilities.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/IGfxDevice.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/ITextureLoader.h
	#${NCINE_SOURCE_DIR}/nCine/Graphics/ITextureSaver.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/Material.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/MeshSprite.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/Particle.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/ParticleAffectors.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/ParticleInitializer.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/ParticleSystem.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RectAnimation.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RenderBatcher.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RenderBuffersManager.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RenderCommand.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RenderCommandPool.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RenderQueue.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RenderResources.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RenderStatistics.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/RenderVaoPool.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/SceneNode.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/ScreenViewport.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/Shader.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/ShaderState.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/Sprite.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/Texture.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/TextureFormat.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/TextureLoaderDds.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/TextureLoaderKtx.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/TextureLoaderPng.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/TextureLoaderPvr.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/TextureLoaderQoi.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/TextureLoaderRaw.h
	#${NCINE_SOURCE_DIR}/nCine/Graphics/TextureSaverPng.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/Viewport.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLAttribute.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLBlending.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLBufferObject.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLClearColor.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLCullFace.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLDebug.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLDepthTest.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLFramebuffer.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLHashMap.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLRenderbuffer.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLScissorTest.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLShader.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLShaderProgram.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLShaderUniformBlocks.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLShaderUniforms.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLTexture.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLUniform.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLUniformBlock.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLUniformBlockCache.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLUniformCache.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLVertexArrayObject.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLVertexFormat.h
	${NCINE_SOURCE_DIR}/nCine/Graphics/GL/GLViewport.h
	${NCINE_SOURCE_DIR}/nCine/Input/IInputEventHandler.h
	${NCINE_SOURCE_DIR}/nCine/Input/IInputManager.h
	${NCINE_SOURCE_DIR}/nCine/Input/InputEvents.h
	${NCINE_SOURCE_DIR}/nCine/Input/JoyMapping.h
	${NCINE_SOURCE_DIR}/nCine/Input/JoyMappingDb.h
	${NCINE_SOURCE_DIR}/nCine/Input/Keys.h
	${NCINE_SOURCE_DIR}/nCine/IO/CompressionUtils.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/AABB.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/Color.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/Colorf.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/Matrix4x4.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/Quaternion.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/Rect.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/Vector2.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/Vector3.h
	${NCINE_SOURCE_DIR}/nCine/Primitives/Vector4.h
	${NCINE_SOURCE_DIR}/nCine/Threading/Atomic.h
	${NCINE_SOURCE_DIR}/nCine/Threading/IThreadCommand.h
	${NCINE_SOURCE_DIR}/nCine/Threading/IThreadPool.h
)

list(APPEND HEADERS
	${NCINE_SOURCE_DIR}/simdjson/simdjson.h
)

list(APPEND HEADERS
	${NCINE_SOURCE_DIR}/Common.h
	${NCINE_SOURCE_DIR}/TermLogo.h
	${NCINE_SOURCE_DIR}/Jazz2/AnimState.h
	${NCINE_SOURCE_DIR}/Jazz2/ContentResolver.h
	${NCINE_SOURCE_DIR}/Jazz2/ContentResolver.Shaders.h
	${NCINE_SOURCE_DIR}/Jazz2/EventType.h
	${NCINE_SOURCE_DIR}/Jazz2/ExitType.h
	${NCINE_SOURCE_DIR}/Jazz2/GameDifficulty.h
	${NCINE_SOURCE_DIR}/Jazz2/ILevelHandler.h
	${NCINE_SOURCE_DIR}/Jazz2/IRootController.h
	${NCINE_SOURCE_DIR}/Jazz2/IStateHandler.h
	${NCINE_SOURCE_DIR}/Jazz2/LevelHandler.h
	${NCINE_SOURCE_DIR}/Jazz2/LevelInitialization.h
	${NCINE_SOURCE_DIR}/Jazz2/LightEmitter.h
	${NCINE_SOURCE_DIR}/Jazz2/PitType.h
	${NCINE_SOURCE_DIR}/Jazz2/PlayerActions.h
	${NCINE_SOURCE_DIR}/Jazz2/PlayerType.h
	${NCINE_SOURCE_DIR}/Jazz2/PreferencesCache.h
	${NCINE_SOURCE_DIR}/Jazz2/ShieldType.h
	${NCINE_SOURCE_DIR}/Jazz2/WeaponType.h
	${NCINE_SOURCE_DIR}/Jazz2/WeatherType.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/ActorBase.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Player.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/PlayerCorpse.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/SolidObjectBase.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/AmmoCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/CarrotCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/CarrotFlyCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/CarrotInvincibleCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/CoinCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/CollectibleBase.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/FastFireCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/FoodCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/GemCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/GemGiant.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/GemRing.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/OneUpCollectible.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Collectibles/Stopwatch.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bat.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bee.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Caterpillar.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Crab.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Demon.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Doggy.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Dragon.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Dragonfly.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/FatChick.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Fencer.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Fish.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/EnemyBase.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Helmut.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/LabRat.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Lizard.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/LizardFloat.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/MadderHatter.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Monkey.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Rapier.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Raven.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Skeleton.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Sparks.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Sucker.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/SuckerFloat.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Turtle.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/TurtleShell.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/TurtleTough.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/TurtleTube.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Witch.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/BossBase.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/Bilsy.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/Bolly.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/Bubba.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/Devan.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/DevanRemote.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/Queen.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/Robot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/TurtleBoss.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Enemies/Bosses/Uterus.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/AirboardGenerator.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/AmbientBubbles.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/AmbientSound.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/Bird.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/BirdCage.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/Bomb.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/BonusWarp.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/Checkpoint.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/Copter.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/EndOfLevel.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/Eva.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/IceBlock.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/Moth.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/RollingRock.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/Spring.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/SteamNote.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Environment/SwingingVine.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Explosion.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Lighting/FlickerLight.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Lighting/PulsatingRadialLight.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Lighting/StaticRadialLight.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/AmmoBarrel.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/AmmoCrate.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/BarrelContainer.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/Bridge.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/CrateContainer.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/GenericContainer.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/GemBarrel.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/GemCrate.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/MovingPlatform.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/PinballBumper.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/PinballPaddle.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/Pole.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/PowerUpMorphMonitor.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/PowerUpShieldMonitor.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/PowerUpWeaponMonitor.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/PushableBox.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/SpikeBall.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Solid/TriggerCrate.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/BlasterShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/BouncerShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/ElectroShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/FreezerShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/PepperShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/RFShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/SeekerShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/ShieldFireShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/ShieldLightningShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/ShieldWaterShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/ShotBase.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/Thunderbolt.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/ToasterShot.h
	${NCINE_SOURCE_DIR}/Jazz2/Actors/Weapons/TNT.h
	${NCINE_SOURCE_DIR}/Jazz2/Collisions/DynamicTree.h
	${NCINE_SOURCE_DIR}/Jazz2/Collisions/DynamicTreeBroadPhase.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/AnimSetMapping.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/EventConverter.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Anims.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Anims.Palettes.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Block.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Data.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Episode.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Event.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Level.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Strings.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Tileset.h
	${NCINE_SOURCE_DIR}/Jazz2/Compatibility/JJ2Version.h
	${NCINE_SOURCE_DIR}/Jazz2/Events/EventMap.h
	${NCINE_SOURCE_DIR}/Jazz2/Events/EventSpawner.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/FindAngelScript.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/JJ2PlusDefinitions.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/LevelScriptLoader.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/RegisterArray.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/RegisterRef.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/RegisterString.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/ScriptActorWrapper.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/ScriptLoader.h
	${NCINE_SOURCE_DIR}/Jazz2/Scripting/ScriptPlayerWrapper.h
	${NCINE_SOURCE_DIR}/Jazz2/Tiles/TileMap.h
	${NCINE_SOURCE_DIR}/Jazz2/Tiles/TileSet.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Canvas.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Cinematics.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/ControlScheme.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/DiscordRpcClient.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Font.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/HUD.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/RgbLights.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/UpscaleRenderPass.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/AboutSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/BeginSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/ControlsOptionsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/CustomLevelSelectSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/EpisodeSelectSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/GameplayEnhancementsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/GameplayOptionsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/GraphicsOptionsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/IMenuContainer.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/ImportSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/InGameMenu.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/InputDiagnosticsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/LanguageSelectSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/LoadingSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/MainMenu.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/OptionsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/PauseSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/RefreshCacheSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/RemapControlsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/RescaleModeSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/ScrollableMenuSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/SimpleMessageSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/SoundsOptionsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/StartGameOptionsSection.h
	${NCINE_SOURCE_DIR}/Jazz2/UI/Menu/TouchControlsOptionsSection.h
)