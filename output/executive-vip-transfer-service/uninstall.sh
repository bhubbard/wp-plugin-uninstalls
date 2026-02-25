#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'execvitr_email'
wp option delete 'execvitr_google_api_key'
wp option delete 'execvitr_country'
wp option delete 'execvitr_currency'
wp option delete 'execvitr_km_price'
wp option delete 'execvitr_minimum_price'
wp option delete 'execvitr_max_distance'
wp option delete 'execvitr_whatsapp_number'
wp option delete 'execvitr_notify_admin'
wp option delete 'execvitr_notify_whatsapp'
wp option delete 'execvitr_distance_unit'
wp option delete 'execvitr_enable_cash'
wp option delete 'execvitr_min_booking_hours'
wp option delete 'execvitr_cars'
wp option delete 'execvitr_form_page_id'
wp option delete 'execvitr_product_id'
wp option delete 'execvitr_needs_product_setup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'execvitr_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'vts_%'"
wp option delete 'execvitr_company_name'
wp option delete 'execvitr_company_taxno'
wp option delete 'execvitr_company_iban'
wp option delete 'execvitr_google_server_key'
wp option delete 'vts_google_api_key'
wp option delete 'vts_country'

# Clear Cron Jobs
wp cron event delete 'execvitr_license_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_execvitr_booking_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_execvitr_booking_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_execvitr_booking_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_execvitr_booking_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tax_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_catalog_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_catalog_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_catalog_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_catalog_visibility'"
