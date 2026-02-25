#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'alg_wc_export_version'
wp option delete 'alg_export_products_fields_date_filter'
wp option delete 'alg_export_products_fields_from_date'
wp option delete 'alg_export_products_fields_end_date'
wp option delete 'woocommerce_version'
wp option delete 'alg_export_csv_separator_3_orders'
wp option delete 'alg_wc_export_add_timepicker'
wp option delete 'alg_export_csv_xml_user_capability'
wp option delete 'alg_export_csv_send_content_length_header'
wp option delete 'alg_export_csv_wrap'
wp option delete 'alg_export_csv_separator'
wp option delete 'alg_export_csv_add_utf_8_bom'
wp option delete 'alg_wc_export_confirm_hpos'
wp option delete 'alg_export_customers_fields'
wp option delete 'alg_export_csv_separator_2_customers'
wp option delete 'alg_wc_export_time_limit'
wp option delete 'alg_export_customers_from_orders_fields'
wp option delete 'alg_wc_export_wp_query_block_size'
wp option delete 'alg_export_csv_separator_2_orders'
wp option delete 'alg_export_orders_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_orders_fields_additional_enabled_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_orders_fields_additional_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_orders_fields_additional_value_%'"
wp option delete 'alg_export_orders_items_fields'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_orders_items_fields_additional_enabled_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_orders_items_fields_additional_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_orders_items_fields_additional_value_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_orders_items_fields_additional_type_%'"
wp option delete 'alg_export_csv_separator_2_products'
wp option delete 'alg_export_products_fields'
wp option delete 'alg_export_products_fields_sorted'
wp option delete 'alg_export_products_variation_newline'
wp option delete 'alg_export_products_attribute'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_products_fields_additional_enabled_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_products_fields_additional_title_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'alg_export_products_fields_additional_value_%'"
wp option delete 'alg_export_customers_from_orders_fields_file_type'
wp option delete 'alg_export_customers_from_orders_fields_from_date'
wp option delete 'alg_export_customers_from_orders_fields_end_date'
wp option delete 'alg_wc_export_ajax_download'
wp option delete 'alg_export_products_fields_file_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sold_individually'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_backorders'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
