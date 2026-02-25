#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_positions_widgets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ad_sizes'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_column_size'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advert_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advert_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advert_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advert_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advert_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advert_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advert_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advert_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_advert_start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_advert_start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_advert_start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_advert_start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_advert_stop_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_advert_stop_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_advert_stop_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_advert_stop_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order_in_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order_in_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order_in_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order_in_position'"
