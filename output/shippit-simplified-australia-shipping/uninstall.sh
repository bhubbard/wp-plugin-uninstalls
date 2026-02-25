#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_shippit_api_key'
wp option delete 'wc_settings_shippit_environment'
wp option delete 'wc_settings_shippit_debug'
wp option delete 'wc_settings_shippit_atl_enabled'
wp option delete 'wc_settings_shippit_tariff_code_attribute'
wp option delete 'wc_settings_shippit_tariff_code_custom_attribute'
wp option delete 'wc_settings_shippit_origin_country_code_attribute'
wp option delete 'wc_settings_shippit_origin_country_code_custom_attribute'
wp option delete 'wc_settings_shippit_dangerous_goods_code_attribute'
wp option delete 'wc_settings_shippit_dangerous_goods_code_custom_attribute'
wp option delete 'wc_settings_shippit_dangerous_goods_text_attribute'
wp option delete 'wc_settings_shippit_dangerous_goods_text_custom_attribute'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wc_settings_shippit_standard_shipping_methods'
wp option delete 'wc_settings_shippit_express_shipping_methods'
wp option delete 'wc_settings_shippit_clickandcollect_shipping_methods'
wp option delete 'wc_settings_shippit_plainlabel_shipping_methods'
wp option delete 'wc_settings_shippit_enabled'
wp option delete 'wc_settings_shippit_auto_sync_orders'
wp option delete 'wc_settings_shippit_fulfillment_enabled'
wp option delete 'wcj_order_numbers_enabled'
wp option delete 'wcj_order_number_prefix'
wp option delete 'wcj_order_number_sequential_enabled'
wp option delete 'wc_settings_shippit_fulfillment_tracking_reference'
wp option delete 'wc_shippit_version'
wp option delete 'woocommerce_mamis_shippit_settings'
wp option delete 'woocommerce_mamis_shippit_legacy_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%standard_shipping_methods'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%express_shipping_methods'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%send_all_orders'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auto_sync_orders'"

# Clear Cron Jobs
wp cron event delete 'syncOrders'

