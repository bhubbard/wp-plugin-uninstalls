<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('HIGHCOMPRESS_VERSION_TAG');
delete_site_option('HIGHCOMPRESS_VERSION_TAG');
delete_option('HIGHCOMPRESS_RECENT_CUTOFF');
delete_site_option('HIGHCOMPRESS_RECENT_CUTOFF');
delete_option('HIGHCOMPRESS_TOATAL_Size_BEFORE');
delete_site_option('HIGHCOMPRESS_TOATAL_Size_BEFORE');
delete_option('HIGHCOMPRESS_TOATAL_IMAGES');
delete_site_option('HIGHCOMPRESS_TOATAL_IMAGES');
delete_option('HIGHCOMPRESS_TOATAL_Size_AFTER');
delete_site_option('HIGHCOMPRESS_TOATAL_Size_AFTER');
delete_option('HIGHCOMPRESS_PERCENT');
delete_site_option('HIGHCOMPRESS_PERCENT');
delete_option('HIGHCOMPRESS_TOTAL_SIZE');
delete_site_option('HIGHCOMPRESS_TOTAL_SIZE');
delete_option('HIGHCOMPRESS_AUTOCOMPRESS_RULE');
delete_site_option('HIGHCOMPRESS_AUTOCOMPRESS_RULE');
delete_option('HIGHCOMPRESS_AUTOBACKUP_RULE');
delete_site_option('HIGHCOMPRESS_AUTOBACKUP_RULE');
delete_option('HIGHCOMPRESS_MY');
delete_site_option('HIGHCOMPRESS_MY');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'HIGHCOMPRESS_OFFSET_OFF_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('HIGHCOMPRESS_FILE_TYPE');
delete_site_option('HIGHCOMPRESS_FILE_TYPE');
delete_option('HIGHCOMPRESS_PLAN_NAME');
delete_site_option('HIGHCOMPRESS_PLAN_NAME');
delete_option('HIGHCOMPRESS_COUNT');
delete_site_option('HIGHCOMPRESS_COUNT');
delete_option('HIGHCOMPRESS_MODE');
delete_site_option('HIGHCOMPRESS_MODE');
delete_option('HIGHCOMPRESS_PLAN');
delete_site_option('HIGHCOMPRESS_PLAN');
delete_option('HIGHCOMPRESS_API_KEY');
delete_site_option('HIGHCOMPRESS_API_KEY');
delete_option('HIGHCOMPRESS_TOTAL_COUNT');
delete_site_option('HIGHCOMPRESS_TOTAL_COUNT');
delete_option('HIGHCOMPRESS_USER_ID');
delete_site_option('HIGHCOMPRESS_USER_ID');

