#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dokan_wpcafe_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dokan_wpcafe_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dokan_wpcafe_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dokan_wpcafe_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'food_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'food_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'food_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'food_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_pro_preparing_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_pro_preparing_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_pro_preparing_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_pro_preparing_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_pro_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_pro_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_pro_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_pro_delivery_time'"
