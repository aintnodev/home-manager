{
  enable = true;
  settings = {
    max-gamma = 150;

    profile = [
      {
        time = "7:00";
        temperature = 6000;
      }
      {
        time = "19:00";
        temperature = 5000;
      }
      {
        time = "22:00";
        temperature = 4000;
        gamma = 0.8;
      }
    ];
  };
}
