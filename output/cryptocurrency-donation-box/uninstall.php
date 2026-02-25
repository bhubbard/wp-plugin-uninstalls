<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdbbc_activated');
delete_site_option('cdbbc_activated');
delete_option('cdbbc-alreadyRated');
delete_site_option('cdbbc-alreadyRated');
delete_option('cdbbc_activation_time');
delete_site_option('cdbbc_activation_time');
delete_option('cdbbc_spare_me');
delete_site_option('cdbbc_spare_me');
delete_option('cdbbc_email_verification');
delete_site_option('cdbbc_email_verification');
delete_option('cddbc_activated');
delete_site_option('cddbc_activated');
delete_option('cdbbc_settings');
delete_site_option('cdbbc_settings');
delete_option('CDBBC_do_activation_redirect');
delete_site_option('CDBBC_do_activation_redirect');
delete_option('CDBBC_FRESH_INSTALLATION');
delete_site_option('CDBBC_FRESH_INSTALLATION');
delete_option('cdbbc_migarte_codestar');
delete_site_option('cdbbc_migarte_codestar');
delete_option('CDBBC_FREE_VERSION');
delete_site_option('CDBBC_FREE_VERSION');
delete_option('cdbbc_migarte_settings');
delete_site_option('cdbbc_migarte_settings');
delete_option('meta_public_key');
delete_site_option('meta_public_key');
delete_option('meta_private_key');
delete_site_option('meta_private_key');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_db_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('cdbbc-add-wallet');
delete_site_option('cdbbc-add-wallet');
delete_option('cdbbc-coin-settings');
delete_site_option('cdbbc-coin-settings');

// Delete Transients
delete_transient('cdbbc_init_activation');
delete_site_transient('cdbbc_init_activation');
delete_transient('donation_auth_token');
delete_site_transient('donation_auth_token');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_init_activation', '_site_transient_%_init_activation' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

