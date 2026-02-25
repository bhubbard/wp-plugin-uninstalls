<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bibleget_settings');
delete_site_option('bibleget_settings');
delete_option('BGET');
delete_site_option('BGET');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%IDX' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bibleget_biblebooks%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bibleget_versions');
delete_site_option('bibleget_versions');
delete_option('bibleget_error_admin_notices');
delete_site_option('bibleget_error_admin_notices');
delete_option('bibleget_languages');
delete_site_option('bibleget_languages');
delete_option('bibleget_admin_notices');
delete_site_option('bibleget_admin_notices');

