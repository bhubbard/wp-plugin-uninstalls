#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ct_activated'
wp option delete 'ct_prompted'
wp option delete 'imlac_candle_publish_notification'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candle_prayer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candle_prayer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candle_prayer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candle_prayer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candle_prayer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candle_prayer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candle_prayer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candle_prayer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candle_prayer_location_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candle_prayer_location_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candle_prayer_location_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candle_prayer_location_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candle_title_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candle_title_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candle_title_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candle_title_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'candle_prayer_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'candle_prayer_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'candle_prayer_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'candle_prayer_location'"
