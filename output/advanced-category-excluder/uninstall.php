<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ace_link_sections_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ace_linkcategory_sections_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ace_page_sections_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ace_settings_onlyinwidget');
delete_site_option('ace_settings_onlyinwidget');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ace_categories_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ace_settings_hide');
delete_site_option('ace_settings_hide');
delete_option('ace_settings_xsg_category');
delete_site_option('ace_settings_xsg_category');
delete_option('sm_options');
delete_site_option('sm_options');
delete_option('ace_categories_norobots');
delete_site_option('ace_categories_norobots');
delete_option('ace_settings_exclude_method');
delete_site_option('ace_settings_exclude_method');
delete_option('ace_categories_is_home');
delete_site_option('ace_categories_is_home');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ace_catwidget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ace_pagewidget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ace_version');
delete_site_option('ace_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ace_settings_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ace_settings_ec3');
delete_site_option('ace_settings_ec3');
delete_option('ec3_event_category');
delete_site_option('ec3_event_category');
delete_option('ace_settings_showempty');
delete_site_option('ace_settings_showempty');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ace_linkcat_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ace_widget_calendar');
delete_site_option('ace_widget_calendar');
delete_option('ace_widget_categories');
delete_site_option('ace_widget_categories');
delete_option('ace_widget_recent_comments');
delete_site_option('ace_widget_recent_comments');
delete_option('widget_recent_entries');
delete_site_option('widget_recent_entries');
delete_option('ace_widget_recent_posts');
delete_site_option('ace_widget_recent_posts');

