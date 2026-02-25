#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'empik_last_export_file_name'
wp option delete 'empik_woocommerce_set_export_logistic_class'
wp option delete 'empik_woocommerce_set_export_product_states'
wp option delete 'empik_woocommerce_set_export_offers_delivery_time_control'
wp option delete 'empik_woocommerce_set_export_offers_from'
wp option delete 'empik_woocommerce_set_export_offers_stock_control'
wp option delete 'empik_export_offers_is_running'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'empik_import_orders_is_running'
wp option delete 'woocommerce_calc_taxes'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'empik_shipping_mapping'
wp option delete 'empik_woocommerce_set_cron_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_is_registered'"
wp option delete 'empik_woocommerce_set_api_key'
wp option delete 'empik_export_products_is_running'
wp option delete 'empik_woocommerce_set_export_offers_id_field'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Clear Cron Jobs
wp cron event delete 'empik_wp_cron_import_orders'
wp cron event delete 'empik_wp_cron_import_offers'
wp cron event delete 'empik_wp_cron_import_products'
wp cron event delete 'send_tracking_number_to_empik'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_price_sale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_price_sale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_price_sale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_price_sale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_sale_date_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_sale_date_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_sale_date_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_sale_date_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_sale_date_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_sale_date_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_sale_date_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_sale_date_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_logistic_klass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_logistic_klass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_logistic_klass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_logistic_klass'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_product_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_product_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_product_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_product_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_product_state_all_variants'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_product_state_all_variants'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_product_state_all_variants'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_product_state_all_variants'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_carrier_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_carrier_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_carrier_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_carrier_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_carrier_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_carrier_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_carrier_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_carrier_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_empik_carrier_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_empik_carrier_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_empik_carrier_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_empik_carrier_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
