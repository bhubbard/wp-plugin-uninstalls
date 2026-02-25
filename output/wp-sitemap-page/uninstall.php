<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsp_add_nofollow');
delete_site_option('wsp_add_nofollow');
delete_option('wsp_posts_by_category');
delete_site_option('wsp_posts_by_category');
delete_option('wsp_is_display_post_multiple_time');
delete_site_option('wsp_is_display_post_multiple_time');
delete_option('wsp_exclude_pages');
delete_site_option('wsp_exclude_pages');
delete_option('wsp_exclude_cpt_page');
delete_site_option('wsp_exclude_cpt_page');
delete_option('wsp_exclude_cpt_post');
delete_site_option('wsp_exclude_cpt_post');
delete_option('wsp_exclude_cpt_archive');
delete_site_option('wsp_exclude_cpt_archive');
delete_option('wsp_exclude_cpt_author');
delete_site_option('wsp_exclude_cpt_author');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wsp_exclude_cpt_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wsp_exclude_taxonomy_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wsp_is_exclude_password_protected');
delete_site_option('wsp_is_exclude_password_protected');
delete_option('wsp_is_display_copyright');
delete_site_option('wsp_is_display_copyright');
delete_option('wsp_version_key');
delete_site_option('wsp_version_key');

