#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bgcolor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bg_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_jpeg_quality'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_halign'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_valign'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_force'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_min_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_small_action'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_addallsizes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_selected_sizes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tooriginal'"
wp option delete 'square_thumbnails_mailchimp_setup_result'
wp option delete 'square_thumbnails_pro_notifications'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sqt_pro_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sqt_pro_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sqt_pro_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sqt_pro_notice_dismissed'"
