#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apaczka_woocommerce_SC_CACHE'
wp option delete 'apaczka_woocommerce_SC_CACHE_TIMESTAMP'
wp option delete 'apaczka_pl_api_returned_error'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'apaczka_countries_cache'
wp option delete 'apaczka_woocommerce_settings_general_apaczka_map_debug_mode'
wp option delete 'woocommerce_default_country'
wp option delete 'apaczka_woocommerce_settings_general_dispath_point_inpost'
wp option delete 'apaczka_woocommerce_settings_general_dispath_point_kurier48'
wp option delete 'apaczka_woocommerce_settings_general_dispath_point_ups'
wp option delete 'apaczka_woocommerce_settings_general_dispath_point_dpd'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_apaczka_last_order_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_apaczka_last_order_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_apaczka_last_order_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_apaczka_last_order_object'"
