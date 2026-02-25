<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clonable_site');
delete_site_option('clonable_site');
delete_option('clonable_api_key');
delete_site_option('clonable_api_key');
delete_option('clonable_woocommerce_allowed_origins');
delete_site_option('clonable_woocommerce_allowed_origins');
delete_option('clonable_default_country_by_domain');
delete_site_option('clonable_default_country_by_domain');
delete_option('clonable_debounce_counter');
delete_site_option('clonable_debounce_counter');
delete_option('clonable_public_key');
delete_site_option('clonable_public_key');
delete_option('clonable_allowed_hosts_enabled');
delete_site_option('clonable_allowed_hosts_enabled');
delete_option('clonable_woocommerce_module_enabled');
delete_site_option('clonable_woocommerce_module_enabled');
delete_option('clonable_woocommerce_analytics_enabled');
delete_site_option('clonable_woocommerce_analytics_enabled');
delete_option('clonable_product_exclusions_enabled');
delete_site_option('clonable_product_exclusions_enabled');
delete_option('clonable_woocommerce_enable_pdf_invoice_translation');
delete_site_option('clonable_woocommerce_enable_pdf_invoice_translation');
delete_option('clonable_enable_menu_language_switcher');
delete_site_option('clonable_enable_menu_language_switcher');
delete_option('clonable_menu_language_switcher_menu');
delete_site_option('clonable_menu_language_switcher_menu');
delete_option('clonable_show_flag');
delete_site_option('clonable_show_flag');
delete_option('clonable_rounded_flag');
delete_site_option('clonable_rounded_flag');
delete_option('clonable_show_text');
delete_site_option('clonable_show_text');
delete_option('clonable_background_color');
delete_site_option('clonable_background_color');
delete_option('clonable_hover_background_color');
delete_site_option('clonable_hover_background_color');
delete_option('clonable_langswitch_data');
delete_site_option('clonable_langswitch_data');
delete_option('clonable_enable_language_switcher');
delete_site_option('clonable_enable_language_switcher');
delete_option('clonable_size');
delete_site_option('clonable_size');
delete_option('clonable_position');
delete_site_option('clonable_position');
delete_option('clonable_language_tag_service_enabled');
delete_site_option('clonable_language_tag_service_enabled');
delete_option('clonable_langtag_data');
delete_site_option('clonable_langtag_data');
delete_option('clonable_langtag_switch');
delete_site_option('clonable_langtag_switch');
delete_option('clonable_locale_service_enabled');
delete_site_option('clonable_locale_service_enabled');
delete_option('clonable_shortcode_service_enabled');
delete_site_option('clonable_shortcode_service_enabled');
delete_option('clonable_subfolder_service_enabled');
delete_site_option('clonable_subfolder_service_enabled');
delete_option('clonable_max_proxy_timeout');
delete_site_option('clonable_max_proxy_timeout');
delete_option('clonable_max_upstream_requests');
delete_site_option('clonable_max_upstream_requests');
delete_option('clonable_max_upstream_queued');
delete_site_option('clonable_max_upstream_queued');
delete_option('clonable_subfolder_clone_origin_domain');
delete_site_option('clonable_subfolder_clone_origin_domain');
delete_option('clonable_last_sync');
delete_site_option('clonable_last_sync');
delete_option('clonable_email_translations_excluded_addresses');
delete_site_option('clonable_email_translations_excluded_addresses');
delete_option('clonable_wpo_replacements_by_domain');
delete_site_option('clonable_wpo_replacements_by_domain');

// Delete Transients
delete_transient('clonable_connection_mode');
delete_site_transient('clonable_connection_mode');
delete_transient('clonable_notifications');
delete_site_transient('clonable_notifications');
delete_transient('clonable_cached_user');
delete_site_transient('clonable_cached_user');

// Clear Cron Jobs
wp_clear_scheduled_hook('clonable_public_key_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'clonable_origin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'clonable_origin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'clonable_origin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'clonable_origin' ) );

