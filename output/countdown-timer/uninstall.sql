-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fergcorp_countdownTimer_version', 'fergcorp_countdownTimer_deleteOneTimeEvents', 'fergcorp_countdownTimer_timeFormat', 'fergcorp_countdownTimer_showYear', 'fergcorp_countdownTimer_showMonth', 'fergcorp_countdownTimer_showWeek', 'fergcorp_countdownTimer_showDay', 'fergcorp_countdownTimer_showHour', 'fergcorp_countdownTimer_showMinute', 'fergcorp_countdownTimer_showSecond', 'fergcorp_countdownTimer_stripZero', 'fergcorp_countdownTimer_enableJS', 'fergcorp_countdownTimer_timeSinceTime', 'fergcorp_countdownTimer_titleSuffix', 'fergcorp_countdownTimer_enableShortcodeExcerpt', 'fergcorp_countdownTimer_oneTimeEvent', 'widget_fergcorp_countdown_timer_widget');
DELETE FROM wp_options WHERE option_name LIKE 'fergcorp_countdownTimer_%';

