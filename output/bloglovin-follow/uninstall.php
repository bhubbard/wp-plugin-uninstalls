<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bloglovin_follow_button_code');
delete_site_option('bloglovin_follow_button_code');
delete_option('bloglovin_follow_show_at_top');
delete_site_option('bloglovin_follow_show_at_top');
delete_option('bloglovin_follow_show_at_bottom');
delete_site_option('bloglovin_follow_show_at_bottom');
delete_option('bloglovin_follow_show_on_page');
delete_site_option('bloglovin_follow_show_on_page');
delete_option('bloglovin_follow_show_on_post');
delete_site_option('bloglovin_follow_show_on_post');
delete_option('bloglovin_follow_show_on_home');
delete_site_option('bloglovin_follow_show_on_home');
delete_option('bloglovin_follow_show_on_search');
delete_site_option('bloglovin_follow_show_on_search');
delete_option('bloglovin_follow_show_on_archive');
delete_site_option('bloglovin_follow_show_on_archive');
delete_option('bloglovin_follow_margin_top');
delete_site_option('bloglovin_follow_margin_top');
delete_option('bloglovin_follow_margin_bottom');
delete_site_option('bloglovin_follow_margin_bottom');
delete_option('bloglovin_follow_margin_left');
delete_site_option('bloglovin_follow_margin_left');
delete_option('bloglovin_follow_margin_right');
delete_site_option('bloglovin_follow_margin_right');
delete_option('bloglovin_follow_excl_post');
delete_site_option('bloglovin_follow_excl_post');
delete_option('bloglovin_follow_excl_cat');
delete_site_option('bloglovin_follow_excl_cat');
delete_option('bloglovin_follow_css_style');
delete_site_option('bloglovin_follow_css_style');
delete_option('bloglovin_follow_css_class');
delete_site_option('bloglovin_follow_css_class');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'bloglovin_follow_show_on_post_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

