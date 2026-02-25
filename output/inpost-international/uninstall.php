<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inpost_intl_code_verifier');
delete_site_option('inpost_intl_code_verifier');
delete_option('inpost_intl_code_challenge');
delete_site_option('inpost_intl_code_challenge');
delete_option('inpost_international_connection_timeout');
delete_site_option('inpost_international_connection_timeout');
delete_option('inpost_international_settings_merchant');
delete_site_option('inpost_international_settings_merchant');
delete_option('inpost_international_settings_auth');
delete_site_option('inpost_international_settings_auth');
delete_option('inpost_international_only_for_admins');
delete_site_option('inpost_international_only_for_admins');
delete_option('inpost_international_settings_products');
delete_site_option('inpost_international_settings_products');
delete_option('woocommerce_custom_orders_table_enabled');
delete_site_option('woocommerce_custom_orders_table_enabled');
delete_option('inpost_international_settings_sending');
delete_site_option('inpost_international_settings_sending');
delete_option('inpost_international_settings_dispatch_points');
delete_site_option('inpost_international_settings_dispatch_points');
delete_option('inpost_international_settings_geowidget');
delete_site_option('inpost_international_settings_geowidget');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_template_rates' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_rates' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('easypack_geowidget_production_token');
delete_site_option('easypack_geowidget_production_token');
delete_option('easypack_geowidget_sandbox_token');
delete_site_option('easypack_geowidget_sandbox_token');
delete_option('inpost_intl_activated');
delete_site_option('inpost_intl_activated');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Delete Transients
delete_transient('inpost_intl_api_token_refreshing');
delete_site_transient('inpost_intl_api_token_refreshing');

// Clear Cron Jobs
wp_clear_scheduled_hook('inpost_intl_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'inpost_international_parcel_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'inpost_international_parcel_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'inpost_international_parcel_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'inpost_international_parcel_template' ) );

