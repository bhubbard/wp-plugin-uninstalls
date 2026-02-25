#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmwc_settings_data'
wp option delete 'tmwc_settings_data_skin_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmwc_show_woocommerce_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmwc_show_woocommerce_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmwc_show_woocommerce_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmwc_show_woocommerce_button'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmwc_woocommerce_button_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmwc_woocommerce_button_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmwc_woocommerce_button_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmwc_woocommerce_button_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_photo_or_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_photo_or_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_photo_or_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_photo_or_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmwc_woocommerce_button_attendant_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmwc_woocommerce_button_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmwc_woocommerce_button_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmwc_woocommerce_button_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmwc_woocommerce_button_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmwc_woocommerce_button_position_shop_archive'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmwc_woocommerce_button_position_shop_archive'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmwc_woocommerce_button_position_shop_archive'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmwc_woocommerce_button_position_shop_archive'"
