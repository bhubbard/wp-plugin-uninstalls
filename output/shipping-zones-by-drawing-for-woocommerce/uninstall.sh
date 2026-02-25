#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'SZbD_settings_test'
wp option delete 'szbd_google_api_key'
wp option delete 'szbd_deactivate_google'
wp option delete 'woocommerce_tax_display_cart'
wp option delete 'szbd_store_address_mode'
wp option delete 'woocommerce_db_version'
wp option delete 'szbd_log_server_requests'
wp option delete 'szbd_debug'
wp option delete 'szbd_google_api_key_2'
wp option delete 'fdoe_disable_checkout_validation'
wp option delete 'fdoe_enable_delivery_switcher'
wp option delete 'szbd_server_mode'
wp option delete 'szbd_precise_address'
wp option delete 'szbd_types_custom'
wp option delete 'szbd_no_map_types'
wp option delete 'szbd_deactivate_postcode'
wp option delete 'szbd_map_placement'
wp option delete 'szbd_enable_at_cart'
wp option delete 'szbd_force_shortcode'
wp option delete 'fdoe_skip_address_validation'
wp option delete 'szbd_select_top_method'
wp option delete 'szbd_result_types'
wp option delete 'szbd_monitor'
wp option delete 'szbd_precise_address_mandatory'
wp option delete 'szbd_precise_address_plus_code'
wp option delete 'szbd_hide_shipping_cart'
wp option delete 'szbd_exclude_shipping_methods'
wp option delete 'szbd_servermode_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'szbdzones_metakey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'szbdzones_metakey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'szbdzones_metakey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'szbdzones_metakey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'szbdorigins_metakey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'szbdorigins_metakey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'szbdorigins_metakey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'szbdorigins_metakey'"
