<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rw_apikey');
delete_site_option('rw_apikey');
delete_option('rw_account');
delete_site_option('rw_account');
delete_option('repuso_js_code');
delete_site_option('repuso_js_code');
delete_option('repuso_page_type_front-page');
delete_site_option('repuso_page_type_front-page');
delete_option('repuso_page_type_blog-index');
delete_site_option('repuso_page_type_blog-index');
delete_option('repuso_page_type_pages');
delete_site_option('repuso_page_type_pages');
delete_option('repuso_page_type_posts');
delete_site_option('repuso_page_type_posts');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'repuso_page_show_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'repuso_page_hide_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('url_itself');
delete_site_option('url_itself');
delete_option('url_type');
delete_site_option('url_type');
delete_option('rw_notice_settings_dismissed_until');
delete_site_option('rw_notice_settings_dismissed_until');
delete_option('rw_notice_review_dismissed_until');
delete_site_option('rw_notice_review_dismissed_until');
delete_option('rw_posts');
delete_site_option('rw_posts');
delete_option('rw_widgets');
delete_site_option('rw_widgets');
delete_option('rw_trial');
delete_site_option('rw_trial');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'repuso_page_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

