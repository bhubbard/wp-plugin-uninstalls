<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eaee_plugin_version');
delete_site_option('eaee_plugin_version');
delete_option('eaee_do_onboarding_redirect');
delete_site_option('eaee_do_onboarding_redirect');
delete_option('eaee_enable_shipped_status');
delete_site_option('eaee_enable_shipped_status');
delete_option('eaee_auto_packed_active');
delete_site_option('eaee_auto_packed_active');
delete_option('eaee_enable_shipped_email');
delete_site_option('eaee_enable_shipped_email');
delete_option('eaee_after_update_notice');
delete_site_option('eaee_after_update_notice');
delete_option('eaee_license_id');
delete_site_option('eaee_license_id');
delete_option('_transient_eaee_customer_data_cache');
delete_site_option('_transient_eaee_customer_data_cache');
delete_option('_site_transient_eaee_customer_data_cache');
delete_site_option('_site_transient_eaee_customer_data_cache');
delete_option('eaee_shipped_email_message');
delete_site_option('eaee_shipped_email_message');
delete_option('eaee_status_shipped_bg');
delete_site_option('eaee_status_shipped_bg');
delete_option('eaee_status_shipped_text');
delete_site_option('eaee_status_shipped_text');
delete_option('eaee_status_packed_bg');
delete_site_option('eaee_status_packed_bg');
delete_option('eaee_status_packed_text');
delete_site_option('eaee_status_packed_text');
delete_option('eaee_default_shipping_integration');
delete_site_option('eaee_default_shipping_integration');
delete_option('eaee_shipping_company');
delete_site_option('eaee_shipping_company');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'eaee_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_saved' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eaee_invoice_trigger');
delete_site_option('eaee_invoice_trigger');
delete_option('eaee_dash_stats_index');
delete_site_option('eaee_dash_stats_index');
delete_option('eaee_log_tracking_enabled');
delete_site_option('eaee_log_tracking_enabled');
delete_option('eafatura_uuid');
delete_site_option('eafatura_uuid');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'eaee_legacy_snapshot_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eaee_yurtici_normal_saved');
delete_site_option('eaee_yurtici_normal_saved');
delete_option('eaee_yurtici_tahsilatli_saved');
delete_site_option('eaee_yurtici_tahsilatli_saved');
delete_option('eaee_aras_normal_saved');
delete_site_option('eaee_aras_normal_saved');
delete_option('eaee_aras_tahsilatli_saved');
delete_site_option('eaee_aras_tahsilatli_saved');
delete_option('eaee_mng_normal_saved');
delete_site_option('eaee_mng_normal_saved');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');
delete_option('eaee_cache_buster');
delete_site_option('eaee_cache_buster');

// Delete Transients
delete_transient('eaee_customer_data_cache');
delete_site_transient('eaee_customer_data_cache');
delete_transient('eaee_last_api_update_time');
delete_site_transient('eaee_last_api_update_time');
delete_transient('eaee_manual_action_notice');
delete_site_transient('eaee_manual_action_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eaee_tax_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eaee_tax_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eaee_tax_rate' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eaee_tax_rate' ) );

