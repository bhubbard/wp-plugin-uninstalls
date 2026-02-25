<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ce4wp_activated');
delete_site_option('ce4wp_activated');
delete_option('ce4wp_install_date');
delete_site_option('ce4wp_install_date');
delete_option('ce4wp_activation_redirect');
delete_site_option('ce4wp_activation_redirect');
delete_option('ce4wp_ignore_review_notice');
delete_site_option('ce4wp_ignore_review_notice');
delete_option('ce4wp_admin_footer_text_rated');
delete_site_option('ce4wp_admin_footer_text_rated');
delete_option('woocommerce_onboarding_profile');
delete_site_option('woocommerce_onboarding_profile');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('password_protected_status');
delete_site_option('password_protected_status');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

