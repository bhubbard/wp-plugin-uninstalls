<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_wizard_completed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('mcloud-storage-provider');
delete_site_option('mcloud-storage-provider');
delete_option('mcloud-storage-google-credentials');
delete_site_option('mcloud-storage-google-credentials');
delete_option('mcloud-storage-google-bucket');
delete_site_option('mcloud-storage-google-bucket');
delete_option('mcloud-storage-s3-access-key');
delete_site_option('mcloud-storage-s3-access-key');
delete_option('mcloud-storage-s3-secret');
delete_site_option('mcloud-storage-s3-secret');
delete_option('mcloud-storage-s3-bucket');
delete_site_option('mcloud-storage-s3-bucket');
delete_option('mcloud-storage-s3-region');
delete_site_option('mcloud-storage-s3-region');
delete_option('mcloud-storage-s3-endpoint');
delete_site_option('mcloud-storage-s3-endpoint');
delete_option('mcloud-storage-prefix');
delete_site_option('mcloud-storage-prefix');
delete_option('wpmcs_global_settings');
delete_site_option('wpmcs_global_settings');
delete_option('tantan_wordpress_s3');
delete_site_option('tantan_wordpress_s3');
delete_option('sm_root_dir');
delete_site_option('sm_root_dir');
delete_option('sm_bucket');
delete_site_option('sm_bucket');
delete_option('sm_key_json');
delete_site_option('sm_key_json');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_dismissed' ) );

