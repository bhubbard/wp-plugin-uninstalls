#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wpso_options'
wp option delete 'slw_api_status'
wp option delete 'slw_api_request_validated'
wp option delete 'slw_api_request_sources'
wp option delete 'slw_logger'
wp option delete 'slw_logs_status'
wp option delete 'slw_update_product_locations_stock_values'
wp option delete 'slw_crons_status'
wp option delete 'slw_cron_request_validated'
wp option delete 'slw_settings'
wp option delete 'slw_update_products'
wp option delete 'slw_cron_request_sources'
wp option delete 'slw-archives-status'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_hold_stock_minutes'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'woocommerce_stock_format'
wp option delete 'slw-google-api-key'
wp option delete 'slw-location-selection'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_stock_at_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_stock_at_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_stock_at_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_stock_at_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_assignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_assignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_assignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_assignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_map_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_map_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_map_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_map_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_auto_allocate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_auto_allocate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_auto_allocate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_auto_allocate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_default_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_default_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_default_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_default_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_low_stock_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_stock_location_price_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_stock_location_price_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_stock_location_price_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_stock_location_price_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_backorder_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_backorder_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_backorder_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_backorder_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_timings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_timings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_timings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_timings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_location_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_location_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_location_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_location_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slw_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slw_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slw_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slw_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slw_default_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slw_default_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slw_default_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slw_default_location'"
