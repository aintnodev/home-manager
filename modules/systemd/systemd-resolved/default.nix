{
  enable = true;
  settings.Resolve = {
    DNSSEC = true;
    DNSOverTLS = true;
    FallbackDNS = [
      "1.1.1.1"
      "1.0.0.1"
    ];
  };
}
