#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ignore'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dwt_listing_user_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dwt_listing_user_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dwt_listing_user_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dwt_listing_user_timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dwt_listing_is_hours_allow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dwt_listing_is_hours_allow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dwt_listing_is_hours_allow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dwt_listing_is_hours_allow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dwt_listing_brand_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dwt_listing_brand_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dwt_listing_brand_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dwt_listing_brand_img'"
