Date::DATE_FORMATS[:default] = lambda { |date| I18n.l(date) }
Time::DATE_FORMATS[:default] = lambda { |time| I18n.l(time) }
