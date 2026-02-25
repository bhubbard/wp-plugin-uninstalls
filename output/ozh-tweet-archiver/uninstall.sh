#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ozh_ta'
wp option delete 'ozh_ta_options'

# Clear Cron Jobs
wp cron event delete 'ozh_ta_cron_import'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ozh_ta_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ozh_ta_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ozh_ta_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ozh_ta_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ozh_ta_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ozh_ta_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ozh_ta_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ozh_ta_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ozh_ta_reply_to_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ozh_ta_reply_to_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ozh_ta_reply_to_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ozh_ta_reply_to_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ozh_ta_reply_to_tweet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ozh_ta_reply_to_tweet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ozh_ta_reply_to_tweet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ozh_ta_reply_to_tweet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ozh_ta_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ozh_ta_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ozh_ta_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ozh_ta_%'"
