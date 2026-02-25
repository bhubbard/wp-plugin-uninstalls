<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_koin_settings_status');
delete_site_option('wc_koin_settings_status');
delete_option('wc_koin_settings_override_number_fields');
delete_site_option('wc_koin_settings_override_number_fields');
delete_option('wc_koin_settings_override_document_fields');
delete_site_option('wc_koin_settings_override_document_fields');
delete_option('wc_koin_settings_transacting_countries');
delete_site_option('wc_koin_settings_transacting_countries');
delete_option('wc_koin_settings_environment');
delete_site_option('wc_koin_settings_environment');
delete_option('wc_koin_settings_code');
delete_site_option('wc_koin_settings_code');
delete_option('wc_koin_settings_account');
delete_site_option('wc_koin_settings_account');
delete_option('wc_koin_settings_custom_document_field');
delete_site_option('wc_koin_settings_custom_document_field');
delete_option('wc_koin_settings_sync');
delete_site_option('wc_koin_settings_sync');
delete_option('wc_koin_settings_my_account');
delete_site_option('wc_koin_settings_my_account');
delete_option('wc_koin_settings_secret_key');
delete_site_option('wc_koin_settings_secret_key');
delete_option('wc_koin_settings_org_id');
delete_site_option('wc_koin_settings_org_id');
delete_option('koin_settings_compatibility');
delete_site_option('koin_settings_compatibility');
delete_option('wko_koin_db_version');
delete_site_option('wko_koin_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_koin_blank_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_koin_blank_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_koin_blank_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_koin_blank_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wc-koin-official_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wc-koin-official_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wc-koin-official_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wc-koin-official_order_id' ) );

