-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'SZbD_settings_test', 'szbd_google_api_key', 'szbd_deactivate_google', 'woocommerce_tax_display_cart', 'szbd_store_address_mode', 'woocommerce_db_version', 'szbd_log_server_requests', 'szbd_debug', 'szbd_google_api_key_2', 'fdoe_disable_checkout_validation', 'fdoe_enable_delivery_switcher', 'szbd_server_mode', 'szbd_precise_address', 'szbd_types_custom', 'szbd_no_map_types', 'szbd_deactivate_postcode', 'szbd_map_placement', 'szbd_enable_at_cart', 'szbd_force_shortcode', 'fdoe_skip_address_validation', 'szbd_select_top_method', 'szbd_result_types', 'szbd_monitor', 'szbd_precise_address_mandatory', 'szbd_precise_address_plus_code', 'szbd_hide_shipping_cart', 'szbd_exclude_shipping_methods', 'szbd_servermode_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('szbdzones_metakey', 'szbdorigins_metakey');
DELETE FROM wp_usermeta WHERE meta_key IN ('szbdzones_metakey', 'szbdorigins_metakey');
DELETE FROM wp_termmeta WHERE meta_key IN ('szbdzones_metakey', 'szbdorigins_metakey');
DELETE FROM wp_commentmeta WHERE meta_key IN ('szbdzones_metakey', 'szbdorigins_metakey');

