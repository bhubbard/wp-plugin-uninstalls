<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lrm_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('lrm_general');
delete_site_option('lrm_general');
delete_option('lrm_advanced');
delete_site_option('lrm_advanced');
delete_option('lrm_messages');
delete_site_option('lrm_messages');
delete_option('lrm_mails');
delete_site_option('lrm_mails');
delete_option('lrm_beg_message');
delete_site_option('lrm_beg_message');
delete_option('lrm-forms-init');
delete_site_option('lrm-forms-init');
delete_option('lrm_general_pro');
delete_site_option('lrm_general_pro');
delete_option('lrm_auto_trigger');
delete_site_option('lrm_auto_trigger');
delete_option('lrm_integrations');
delete_site_option('lrm_integrations');
delete_option('lrm_messages_pro');
delete_site_option('lrm_messages_pro');
delete_option('lrm_pro_version');
delete_site_option('lrm_pro_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%]' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fv_notices');
delete_site_option('fv_notices');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_updating', '_site_transient_%_updating' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-last-login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-last-login' ) );

