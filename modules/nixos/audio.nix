{
  enable = true;
  alsa.enable = true;
  alsa.support32Bit = true;
  pulse.enable = true;
  jack.enable = true;
  extraConfig = {
    pipewire."99-virtual-mic.conf" = {
      context.modules = [
        {
          name = "libpipewire-module-loopback";
          args = {
            node.name = "virt_mic";
            node.description = "Virtual Microphone";
            capture.props = {
              media.class = "Audio/Source";
            };
            playback.props = {
              media.class = "Audio/Sink";
            };
          };
        }
      ];
    };
  };
}
