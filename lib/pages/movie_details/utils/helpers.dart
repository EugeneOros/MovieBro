bool shouldIWatchMovie(int budget, int revenue) {
  bool todayIsSunday = DateTime.now().weekday == DateTime.sunday;
  bool profitOverMillion = revenue - budget > 1000000;
  if (todayIsSunday && profitOverMillion) {
    return true;
  }
  return false;
}
