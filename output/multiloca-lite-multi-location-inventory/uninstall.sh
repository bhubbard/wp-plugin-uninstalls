#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcmlim_enable_location_selection'
wp option delete 'wcmlim_radio_btn_with_display_view'
wp option delete 'wcmlim_txt_in_fdiv'
wp option delete 'wcmlim_txt_in_btn_instock'
wp option delete 'wcmlim_txt_in_btn_outofstock'
wp option delete 'wcmlim_custom_css_enable'
wp option delete 'wcmlim_custom_css'
wp option delete 'wcmlim_enable_shop_filter'
wp option delete 'wcmlim_enable_location_address'
wp option delete 'wcmlim_enable_location_city'
wp option delete 'wcmlim_enable_location_postcode'
wp option delete 'wcmlim_enable_location_state'
wp option delete 'wcmlim_enable_location_country'
wp option delete 'wcmlim_enable_location_email'
wp option delete 'wcmlim_enable_location_phone'
wp option delete 'wcmlim_enable_location_business_hours'
wp option delete 'wcmlim_listing_preset_location'
wp option delete 'wcmlim_display_view'
wp option delete 'wcmlim_location_display_heading'
wp option delete 'wcmlim_instock_button_text'
wp option delete 'wcmlim_outofstock_button_text'
wp option delete 'wcmlim_taxonomy_migrated'

# Clear Cron Jobs
wp cron event delete 'multiloca_reenable_wc_stock_management'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_street_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_street_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_street_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_street_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_postal_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_postal_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_postal_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_postal_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_location_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_location_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_location_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_location_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcmlim_stock_at_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcmlim_stock_at_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcmlim_stock_at_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcmlim_stock_at_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wcmlim_product_availability_at_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wcmlim_product_availability_at_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wcmlim_product_availability_at_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wcmlim_product_availability_at_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_business_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_business_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_business_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_business_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_location_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_location_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_location_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_location_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_group_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_group_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_group_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_group_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcmlim_product_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcmlim_product_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcmlim_product_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcmlim_product_count'"
