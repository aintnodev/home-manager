{
  Unit.Description = "My daily local backup";
  Timer.OnCalendar = "daily";
  Timer.Persistent = true;
  Install.WantedBy = [ "timers.target" ];
}
