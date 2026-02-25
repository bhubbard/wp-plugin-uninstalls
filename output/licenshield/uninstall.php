<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('licenshield_stripe_mode');
delete_site_option('licenshield_stripe_mode');
delete_option('licenshield_stripe_test_public');
delete_site_option('licenshield_stripe_test_public');
delete_option('licenshield_stripe_test_secret');
delete_site_option('licenshield_stripe_test_secret');
delete_option('licenshield_stripe_live_public');
delete_site_option('licenshield_stripe_live_public');
delete_option('licenshield_stripe_live_secret');
delete_site_option('licenshield_stripe_live_secret');
delete_option('licenshield_stripe_webhook_secret');
delete_site_option('licenshield_stripe_webhook_secret');
delete_option('licenshield_company_name');
delete_site_option('licenshield_company_name');
delete_option('licenshield_support_email');
delete_site_option('licenshield_support_email');
delete_option('licenshield_admin_notification_email');
delete_site_option('licenshield_admin_notification_email');
delete_option('licenshield_delete_data_on_uninstall');
delete_site_option('licenshield_delete_data_on_uninstall');
delete_option('licenshield_license_prefix');
delete_site_option('licenshield_license_prefix');
delete_option('licenshield_success_redirect');
delete_site_option('licenshield_success_redirect');
delete_option('licenshield_cancel_redirect');
delete_site_option('licenshield_cancel_redirect');
delete_option('licenshield_db_version');
delete_site_option('licenshield_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_secret' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_public' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('licenshield_seen_tours');
delete_site_option('licenshield_seen_tours');
delete_option('licenshield_wizard_complete');
delete_site_option('licenshield_wizard_complete');
delete_option('licenshield_wizard_welcome_seen');
delete_site_option('licenshield_wizard_welcome_seen');
delete_option('licenshield_wizard_sdk_confirmed');
delete_site_option('licenshield_wizard_sdk_confirmed');

// Delete Transients
delete_transient('licenshield_activation_redirect');
delete_site_transient('licenshield_activation_redirect');

