<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('upkeprvalidationkeycstm');
delete_site_option('upkeprvalidationkeycstm');
delete_option('upkpr_vulnerability_all');
delete_site_option('upkpr_vulnerability_all');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'upkpr_vulnerability_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('upkpr_vulnerability_theme');
delete_site_option('upkpr_vulnerability_theme');
delete_option('upkpr_vulnerability_core');
delete_site_option('upkpr_vulnerability_core');
delete_option('upkpr_vulnerability_plugin');
delete_site_option('upkpr_vulnerability_plugin');
delete_option('upkepr-maintenance-json');
delete_site_option('upkepr-maintenance-json');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'upkprtkn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'upkprtkn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'upkprtkn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'upkprtkn' ) );

