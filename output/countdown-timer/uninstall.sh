#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fergcorp_countdownTimer_version'
wp option delete 'fergcorp_countdownTimer_deleteOneTimeEvents'
wp option delete 'fergcorp_countdownTimer_timeFormat'
wp option delete 'fergcorp_countdownTimer_showYear'
wp option delete 'fergcorp_countdownTimer_showMonth'
wp option delete 'fergcorp_countdownTimer_showWeek'
wp option delete 'fergcorp_countdownTimer_showDay'
wp option delete 'fergcorp_countdownTimer_showHour'
wp option delete 'fergcorp_countdownTimer_showMinute'
wp option delete 'fergcorp_countdownTimer_showSecond'
wp option delete 'fergcorp_countdownTimer_stripZero'
wp option delete 'fergcorp_countdownTimer_enableJS'
wp option delete 'fergcorp_countdownTimer_timeSinceTime'
wp option delete 'fergcorp_countdownTimer_titleSuffix'
wp option delete 'fergcorp_countdownTimer_enableShortcodeExcerpt'
wp option delete 'fergcorp_countdownTimer_oneTimeEvent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fergcorp_countdownTimer_%'"
wp option delete 'widget_fergcorp_countdown_timer_widget'

