class Walk
  def ten_minute_walk?(dirs)
    dirs.count('e') == dirs.count('w') &&
    dirs.count('n') == dirs.count('s') &&
    dirs.count == 10
  end
end
