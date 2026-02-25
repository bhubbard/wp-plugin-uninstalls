#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'api_userid'
wp option delete 'api_pid'
wp option delete 'api_lid'
wp option delete 'api_key'
wp option delete 'api_version'
wp option delete 'api_url'
wp option delete 'klock_crete_order_mode'
wp option delete 'klock_payment_method'
wp option delete 'klock_cc_number'
wp option delete 'klock_cc_exp_month'
wp option delete 'klock_cc_exp_year'
wp option delete 'klock_cc_ccv'
wp option delete 'klock_ship_not_available'
wp option delete 'klock_ship_title'
wp option delete 'klock_ship_desc'
wp option delete 'klock_ship_company_name'
wp option delete 'klock_ship_tracking_no'
wp option delete 'klock_brand_name_array'
wp option delete 'klock_count_brand_add_total_data'
wp option delete 'klock_count_brand_add_current_index'
wp option delete 'klock_brand_add_total_data_cron_update'
wp option delete 'klock_brand_add_current_index_cron_update'
wp option delete 'klock_brand_add_total_data'
wp option delete 'klock_brand_add_current_index'
wp option delete 'klock_crete_product_status'
wp option delete 'klock_crete_product_mode'
wp option delete 'klock_crete_product_image_mode'
wp option delete 'add_manage_product_limit_per_page'
wp option delete 'add_manage_removed_product_key'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_retail_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_retail_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_retail_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_retail_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dropshipping_api_product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dropshipping_api_product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dropshipping_api_product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dropshipping_api_product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ean'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ean'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ean'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ean'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_image_path'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_image_path'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_image_path'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_image_path'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
