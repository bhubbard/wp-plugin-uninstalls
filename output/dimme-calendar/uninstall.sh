#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dimme_calendar_options'
wp option delete 'dimme_calendar_feeds'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_url' OR option_name LIKE '_site_transient_%_url'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dimme_calendar_repeat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dimme_calendar_repeat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dimme_calendar_repeat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dimme_calendar_repeat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dimme_calendar_google_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dimme_calendar_google_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dimme_calendar_google_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dimme_calendar_google_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dimme_calendar_google_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dimme_calendar_google_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dimme_calendar_google_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dimme_calendar_google_id'"
