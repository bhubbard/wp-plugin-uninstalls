-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('breeze_first_install', 'breeze_basic_settings', 'breeze_preload_settings', 'breeze_file_settings', 'breeze_advanced_settings', 'breeze_heartbeat_settings', 'breeze_cdn_integration', 'breeze_varnish_cache', 'breeze_inherit_settings', 'breeze_show_incompatibility', 'breeze_advanced_settings_120', 'breeze_new_update', 'breeze_ecommerce_detect', 'breeze_exclude_url_pages', 'breeze_hide_notice', 'breeze_version', 'breeze_minified_hashes', 'woo_multi_currency_params', 'woocommerce_default_customer_address', 'woocs_storage', 'edd_settings', 'ecwid_store_page_id', 'ecwid_last_store_page_id', '_cartflows_permalink', 'wpsc_shortcode_page_ids', 'ec_option_accountpage', 'ec_option_cartpage', 'bigcommerce_cart_page_id', 'bigcommerce_checkout_page_id', 'bigcommerce_account_page_id', 'bigcommerce_address_page_id', 'bigcommerce_gift_balance_page_id', 'bigcommerce_gift_certificate_page_id', 'bigcommerce_login_page_id', 'bigcommerce_registration_page_id', 'plugins_to_be_updated_count', 'breeze_updated_plugin_count', 'breeze_all_plugins_update_flag', 'woocommerce_hide_out_of_stock_items', 'active_sitewide_plugins', 'breeze_js_trycatch', 'breeze_version_upgraded_from', 'breeze_custom_varnish_server_active', 'breeze_cache_notice_dismissed');
DELETE FROM wp_options WHERE option_name LIKE 'breeze_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type');

