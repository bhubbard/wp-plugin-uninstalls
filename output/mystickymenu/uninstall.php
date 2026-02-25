<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mysticky_option_welcomebar');
delete_site_option('mysticky_option_welcomebar');
delete_option('hide_mystickymenu_cta');
delete_site_option('hide_mystickymenu_cta');
delete_option('mysticky_option_name');
delete_site_option('mysticky_option_name');
delete_option('poptin_id');
delete_site_option('poptin_id');
delete_option('hide_msmrecommended_plugin');
delete_site_option('hide_msmrecommended_plugin');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_review_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_review_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_upgrade_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_upgrade_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_affiliate_box' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_show_affiliate_box_after' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('get_mystickybar_page_views');
delete_site_option('get_mystickybar_page_views');
delete_option('my-sticky-menu_hide_review_box');
delete_site_option('my-sticky-menu_hide_review_box');
delete_option('my-sticky-menu_show_review_box_after');
delete_site_option('my-sticky-menu_show_review_box_after');
delete_option('mystickymenu_intro_box');
delete_site_option('mystickymenu_intro_box');
delete_option('mystickymenu-welcomebars');
delete_site_option('mystickymenu-welcomebars');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'mysticky_option_welcomebar%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('msm_redirection');
delete_site_option('msm_redirection');
delete_option('has_sticky_header_old_version');
delete_site_option('has_sticky_header_old_version');
delete_option('sticky_header_status');
delete_site_option('sticky_header_status');
delete_option('update_mysticky_version_2_6');
delete_site_option('update_mysticky_version_2_6');
delete_option('update_mysticky_version_2_5_7');
delete_site_option('update_mysticky_version_2_5_7');
delete_option('msb_cl_widget_id_exists');
delete_site_option('msb_cl_widget_id_exists');

