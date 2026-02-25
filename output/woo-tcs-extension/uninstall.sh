#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_tab_tcs_username'
wp option delete 'wc_settings_tab_tcs_password'
wp option delete 'wc_settings_tab_tcs_cost_center_code'
wp option delete 'wc_settings_tab_tcs_origin_city'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ywot_picked_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ywot_picked_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ywot_picked_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ywot_picked_up'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ywot_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ywot_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ywot_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ywot_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ywot_carrier_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ywot_carrier_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ywot_carrier_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ywot_carrier_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ywot_pick_up_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ywot_pick_up_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ywot_pick_up_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ywot_pick_up_date'"
