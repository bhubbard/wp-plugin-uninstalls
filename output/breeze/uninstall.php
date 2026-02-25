<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('breeze_first_install');
delete_site_option('breeze_first_install');
delete_option('breeze_basic_settings');
delete_site_option('breeze_basic_settings');
delete_option('breeze_preload_settings');
delete_site_option('breeze_preload_settings');
delete_option('breeze_file_settings');
delete_site_option('breeze_file_settings');
delete_option('breeze_advanced_settings');
delete_site_option('breeze_advanced_settings');
delete_option('breeze_heartbeat_settings');
delete_site_option('breeze_heartbeat_settings');
delete_option('breeze_cdn_integration');
delete_site_option('breeze_cdn_integration');
delete_option('breeze_varnish_cache');
delete_site_option('breeze_varnish_cache');
delete_option('breeze_inherit_settings');
delete_site_option('breeze_inherit_settings');
delete_option('breeze_show_incompatibility');
delete_site_option('breeze_show_incompatibility');
delete_option('breeze_advanced_settings_120');
delete_site_option('breeze_advanced_settings_120');
delete_option('breeze_new_update');
delete_site_option('breeze_new_update');
delete_option('breeze_ecommerce_detect');
delete_site_option('breeze_ecommerce_detect');
delete_option('breeze_exclude_url_pages');
delete_site_option('breeze_exclude_url_pages');
delete_option('breeze_hide_notice');
delete_site_option('breeze_hide_notice');
delete_option('breeze_version');
delete_site_option('breeze_version');
delete_option('breeze_minified_hashes');
delete_site_option('breeze_minified_hashes');
delete_option('woo_multi_currency_params');
delete_site_option('woo_multi_currency_params');
delete_option('woocommerce_default_customer_address');
delete_site_option('woocommerce_default_customer_address');
delete_option('woocs_storage');
delete_site_option('woocs_storage');
delete_option('edd_settings');
delete_site_option('edd_settings');
delete_option('ecwid_store_page_id');
delete_site_option('ecwid_store_page_id');
delete_option('ecwid_last_store_page_id');
delete_site_option('ecwid_last_store_page_id');
delete_option('_cartflows_permalink');
delete_site_option('_cartflows_permalink');
delete_option('wpsc_shortcode_page_ids');
delete_site_option('wpsc_shortcode_page_ids');
delete_option('ec_option_accountpage');
delete_site_option('ec_option_accountpage');
delete_option('ec_option_cartpage');
delete_site_option('ec_option_cartpage');
delete_option('bigcommerce_cart_page_id');
delete_site_option('bigcommerce_cart_page_id');
delete_option('bigcommerce_checkout_page_id');
delete_site_option('bigcommerce_checkout_page_id');
delete_option('bigcommerce_account_page_id');
delete_site_option('bigcommerce_account_page_id');
delete_option('bigcommerce_address_page_id');
delete_site_option('bigcommerce_address_page_id');
delete_option('bigcommerce_gift_balance_page_id');
delete_site_option('bigcommerce_gift_balance_page_id');
delete_option('bigcommerce_gift_certificate_page_id');
delete_site_option('bigcommerce_gift_certificate_page_id');
delete_option('bigcommerce_login_page_id');
delete_site_option('bigcommerce_login_page_id');
delete_option('bigcommerce_registration_page_id');
delete_site_option('bigcommerce_registration_page_id');
delete_option('plugins_to_be_updated_count');
delete_site_option('plugins_to_be_updated_count');
delete_option('breeze_updated_plugin_count');
delete_site_option('breeze_updated_plugin_count');
delete_option('breeze_all_plugins_update_flag');
delete_site_option('breeze_all_plugins_update_flag');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'breeze_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('breeze_js_trycatch');
delete_site_option('breeze_js_trycatch');
delete_option('breeze_version_upgraded_from');
delete_site_option('breeze_version_upgraded_from');

// Delete Transients
delete_transient('breeze_custom_varnish_server_active');
delete_site_transient('breeze_custom_varnish_server_active');
delete_transient('breeze_cache_notice_dismissed');
delete_site_transient('breeze_cache_notice_dismissed');

// Clear Cron Jobs
wp_clear_scheduled_hook('breeze_purge_cache');
wp_clear_scheduled_hook('breeze_clear_remote_gravatar');
wp_clear_scheduled_hook('breeze_scheduled_purge');
wp_clear_scheduled_hook('spai_lqip_generate_event');
wp_clear_scheduled_hook('breeze_pixel_cache_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_template_type' ) );

