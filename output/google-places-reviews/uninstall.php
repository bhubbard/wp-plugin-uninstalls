<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('googleplacesreviews_options');
delete_site_option('googleplacesreviews_options');
delete_option('gpr_widget_version');
delete_site_option('gpr_widget_version');
delete_option('gpr_refid_upgraded');
delete_site_option('gpr_refid_upgraded');
delete_option('widget_gpr_widget');
delete_site_option('widget_gpr_widget');
delete_option('gpr_doing_upgrade');
delete_site_option('gpr_doing_upgrade');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gpr_widget_api_%', '_site_transient_gpr_widget_api_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_gpr_widget_options_%', '_site_transient_gpr_widget_options_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gpr_activation_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gpr_activation_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gpr_activation_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gpr_activation_ignore_notice' ) );

