#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cte-countdown-timer-event-v'
wp option delete 'cte-countdown-timer-event-type'
wp option delete 'cte-countdown-timer-event-installDate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cte-countdown-timer-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cte-countdown-timer-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cte-countdown-timer-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cte-countdown-timer-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timer_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timer_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timer_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timer_date'"
