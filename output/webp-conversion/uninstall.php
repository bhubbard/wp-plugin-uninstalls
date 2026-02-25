<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webpc_auto');
delete_site_option('webpc_auto');
delete_option('webpc_svg');
delete_site_option('webpc_svg');
delete_option('webpc_ico');
delete_site_option('webpc_ico');
delete_option('webpc_remove');
delete_site_option('webpc_remove');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'webpc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('webpc_conversion_library');
delete_site_option('webpc_conversion_library');
delete_option('webpc_200kb');
delete_site_option('webpc_200kb');
delete_option('webpc_1000kb');
delete_site_option('webpc_1000kb');
delete_option('webpc_2500kb');
delete_site_option('webpc_2500kb');
delete_option('webpc_more_2500kb');
delete_site_option('webpc_more_2500kb');

// Delete Transients
delete_transient('webpc_redirect');
delete_site_transient('webpc_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_webpc_backup_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_webpc_backup_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_webpc_backup_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_webpc_backup_file' ) );

