{
  settingsVersion = 53;
  bar = {
    barType = "simple";
    position = "top";
    monitors = [ ];
    density = "default";
    showOutline = false;
    showCapsule = true;
    capsuleOpacity = 0.1;
    capsuleColorKey = "primary";
    widgetSpacing = 6;
    fontScale = 1;
    backgroundOpacity = 0.93;
    useSeparateOpacity = false;
    floating = false;
    marginVertical = 4;
    marginHorizontal = 4;
    frameThickness = 8;
    frameRadius = 12;
    outerCorners = true;
    hideOnOverview = false;
    displayMode = "always_visible";
    autoHideDelay = 500;
    autoShowDelay = 150;
    showOnWorkspaceSwitch = true;
    widgets = {
      left = [
        {
          colorizeDistroLogo = false;
          colorizeSystemIcon = "none";
          customIconPath = "";
          enableColorization = false;
          icon = "noctalia";
          id = "ControlCenter";
          useDistroLogo = true;
        }
        {
          displayMode = "onhover";
          iconColor = "none";
          id = "Network";
          textColor = "none";
        }
        {
          displayMode = "onhover";
          iconColor = "none";
          id = "Bluetooth";
          textColor = "none";
        }
      ];

      center = [
        {
          characterCount = 2;
          colorizeIcons = false;
          emptyColor = "secondary";
          enableScrollWheel = true;
          focusedColor = "primary";
          followFocusedScreen = false;
          groupedBorderOpacity = 1;
          hideUnoccupied = false;
          iconScale = 0.8;
          id = "Workspace";
          labelMode = "none";
          occupiedColor = "secondary";
          pillSize = 0.6;
          showApplications = false;
          showBadge = true;
          showLabelsOnlyWhenOccupied = true;
          unfocusedIconsOpacity = 1;
        }
      ];

      right = [
        {
          deviceNativePath = "__default__";
          displayMode = "graphic-clean";
          hideIfIdle = false;
          hideIfNotDetected = true;
          id = "Battery";
          showNoctaliaPerformance = false;
          showPowerProfiles = false;
        }
        {
          clockColor = "none";
          customFont = "";
          formatHorizontal = "HH:mm";
          formatVertical = "HH mm";
          id = "Clock";
          tooltipFormat = "HH:mm ddd; MMM dd";
          useCustomFont = false;
        }
      ];
    };
  };

  general = {
    avatarImage = "/home/ishu/.face";
    dimmerOpacity = 0.2;
    showScreenCorners = false;
    forceBlackScreenCorners = false;
    scaleRatio = 1;
    radiusRatio = 0.2;
    iRadiusRatio = 1;
    boxRadiusRatio = 1;
    screenRadiusRatio = 1;
    animationSpeed = 1;
    animationDisabled = false;
    compactLockScreen = false;
    lockScreenAnimations = false;
    lockOnSuspend = true;
    showSessionButtonsOnLockScreen = true;
    showHibernateOnLockScreen = false;
    enableShadows = false;
    shadowDirection = "center";
    shadowOffsetX = 0;
    shadowOffsetY = 0;
    language = "";
    allowPanelsOnScreenWithoutBar = true;
    showChangelogOnStartup = true;
    telemetryEnabled = false;
    enableLockScreenCountdown = true;
    lockScreenCountdownDuration = 10000;
    autoStartAuth = false;
    allowPasswordWithFprintd = false;
    clockStyle = "custom";
    clockFormat = "hh\\nmm";
    passwordChars = true;
    lockScreenMonitors = [ ];
    lockScreenBlur = 0.35000000000000003;
    lockScreenTint = 0;
    keybinds = {
      keyUp = [
        "Up"
      ];
      keyDown = [
        "Down"
      ];
      keyLeft = [
        "Left"
      ];
      keyRight = [
        "Right"
      ];
      keyEnter = [
        "Return"
      ];
      keyEscape = [
        "Esc"
      ];
      keyRemove = [
        "Del"
      ];
    };
    reverseScroll = false;
  };

  ui = {
    fontDefault = "Sans Serif";
    fontFixed = "monospace";
    fontDefaultScale = 1;
    fontFixedScale = 1;
    tooltipsEnabled = true;
    panelBackgroundOpacity = 0.93;
    panelsAttachedToBar = true;
    settingsPanelMode = "attached";
    wifiDetailsViewMode = "grid";
    bluetoothDetailsViewMode = "grid";
    networkPanelView = "wifi";
    bluetoothHideUnnamedDevices = false;
    boxBorderEnabled = true;
  };

  location = {
    name = "Saharanpur";
    weatherEnabled = true;
    weatherShowEffects = true;
    useFahrenheit = false;
    use12hourFormat = false;
    showWeekNumberInCalendar = false;
    showCalendarEvents = true;
    showCalendarWeather = true;
    analogClockInCalendar = false;
    firstDayOfWeek = -1;
    hideWeatherTimezone = false;
    hideWeatherCityName = false;
  };

  calendar = {
    cards = [
      {
        enabled = true;
        id = "calendar-header-card";
      }
      {
        enabled = true;
        id = "calendar-month-card";
      }
      {
        enabled = true;
        id = "weather-card";
      }
    ];
  };

  wallpaper = {
    enabled = true;
    overviewEnabled = false;
    directory = "/home/ishu/Pictures/Walls";
    monitorDirectories = [ ];
    enableMultiMonitorDirectories = false;
    showHiddenFiles = false;
    viewMode = "single";
    setWallpaperOnAllMonitors = true;
    fillMode = "crop";
    transitionDuration = 1000;
    panelPosition = "follow_bar";
    hideWallpaperFilenames = false;
    overviewBlur = 0.4;
    overviewTint = 0.6;
    useWallhaven = false;
  };

  controlCenter = {
    position = "close_to_bar_button";
    diskPath = "/";
    shortcuts = {
      left = [
        {
          id = "Network";
        }
        {
          id = "Bluetooth";
        }
        {
          id = "WallpaperSelector";
        }
        {
          id = "NoctaliaPerformance";
        }
      ];

      right = [
        {
          id = "Notifications";
        }
        {
          id = "PowerProfile";
        }
        {
          id = "KeepAwake";
        }
        {
          id = "NightLight";
        }
      ];
    };

    cards = [
      {
        enabled = true;
        id = "profile-card";
      }
      {
        enabled = true;
        id = "shortcuts-card";
      }
      {
        enabled = true;
        id = "audio-card";
      }
      {
        enabled = true;
        id = "brightness-card";
      }
      {
        enabled = false;
        id = "weather-card";
      }
      {
        enabled = true;
        id = "media-sysmon-;card";
      }
    ];
  };

  systemMonitor = {
    cpuWarningThreshold = 80;
    cpuCriticalThreshold = 90;
    tempWarningThreshold = 80;
    tempCriticalThreshold = 90;
    gpuWarningThreshold = 80;
    gpuCriticalThreshold = 90;
    memWarningThreshold = 80;
    memCriticalThreshold = 90;
    swapWarningThreshold = 80;
    swapCriticalThreshold = 90;
    diskWarningThreshold = 80;
    diskCriticalThreshold = 90;
    diskAvailWarningThreshold = 20;
    diskAvailCriticalThreshold = 10;
    batteryWarningThreshold = 20;
    batteryCriticalThreshold = 5;
    enableDgpuMonitoring = false;
    useCustomColors = false;
  };

  dock = {
    enabled = true;
    position = "bottom";
    displayMode = "auto_hide";
    dockType = "floating";
    backgroundOpacity = 1;
    floatingRatio = 1;
    size = 1;
    onlySameOutput = false;
    monitors = [ ];
    pinnedApps = [ ];
    colorizeIcons = false;
    showLauncherIcon = false;
    launcherPosition = "end";
    launcherIconColor = "none";
    pinnedStatic = true;
    inactiveIndicators = false;
    groupApps = true;
    groupContextMenuMode = "extended";
    groupClickAction = "cycle";
    groupIndicatorStyle = "dots";
    deadOpacity = 0.6;
    animationSpeed = 1;
    sitOnFrame = false;
    showFrameIndicator = true;
  };

  network = {
    wifiEnabled = true;
    airplaneModeEnabled = false;
    bluetoothRssiPollingEnabled = false;
    bluetoothRssiPollIntervalMs = 60000;
    wifiDetailsViewMode = "grid";
    bluetoothDetailsViewMode = "grid";
    bluetoothHideUnnamedDevices = false;
    disableDiscoverability = false;
  };

  sessionMenu = {
    enableCountdown = true;
    countdownDuration = 10000;
    position = "center";
    showHeader = true;
    showKeybinds = true;
    largeButtonsStyle = true;
    largeButtonsLayout = "grid";
    powerOptions = [
      {
        action = "lock";
        countdownEnabled = false;
        enabled = true;
        keybind = "1";
      }
      {
        action = "suspend";
        countdownEnabled = false;
        enabled = true;
        keybind = "2";
      }
      {
        action = "hibernate";
        countdownEnabled = false;
        enabled = true;
        keybind = "3";
      }
      {
        action = "reboot";
        countdownEnabled = true;
        enabled = true;
        keybind = "4";
      }
      {
        action = "logout";
        countdownEnabled = true;
        enabled = true;
        keybind = "5";
      }
      {
        action = "shutdown";
        countdownEnabled = true;
        enabled = true;
        keybind = "6";
      }
    ];
  };

  notifications = {
    enabled = true;
    enableMarkdown = false;
    density = "default";
    monitors = [ ];
    location = "top_right";
    overlayLayer = true;
    backgroundOpacity = 1;
    respectExpireTimeout = true;
    lowUrgencyDuration = 3;
    normalUrgencyDuration = 8;
    criticalUrgencyDuration = 15;
    clearDismissed = true;
    saveToHistory = {
      low = true;
      normal = true;
      critical = true;
    };

    sounds.enabled = false;
    enableMediaToast = false;
    enableKeyboardLayoutToast = true;
    enableBatteryToast = true;
  };

  osd = {
    enabled = true;
    location = "bottom";
    autoHideMs = 2000;
    overlayLayer = true;
    backgroundOpacity = 1;
    enabledTypes = [
      0
      1
      2
    ];
    monitors = [ ];
  };

  audio = {
    volumeStep = 5;
    volumeOverdrive = false;
    cavaFrameRate = 30;
    visualizerType = "linear";
    mprisBlacklist = [ ];
    preferredPlayer = "";
    volumeFeedback = true;
  };

  brightness = {
    brightnessStep = 5;
    enforceMinimum = true;
    enableDdcSupport = false;
    backlightDeviceMappings = [ ];
  };

  colorSchemes = {
    useWallpaperColors = true;
    predefinedScheme = "Monochrome";
    darkMode = true;
    schedulingMode = "off";
    manualSunrise = "06:30";
    manualSunset = "18:30";
    generationMethod = "tonal-spot";
    monitorForColors = "";
  };

  nightLight = {
    enabled = false;
    forced = false;
    autoSchedule = true;
    nightTemp = "4000";
    dayTemp = "6500";
    manualSunrise = "06:30";
    manualSunset = "18:30";
  };

  hooks = {
    enabled = false;
    wallpaperChange = "";
    darkModeChange = "";
    screenLock = "";
    screenUnlock = "";
    performanceModeEnabled = "";
    performanceModeDisabled = "";
    startup = "";
    session = "";
  };

  plugins.autoUpdate = true;
  desktopWidgets.enabled = false;
}
