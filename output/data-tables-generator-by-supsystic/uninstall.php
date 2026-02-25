<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('supsystic_tbl_welcome_page_was_showed');
delete_site_option('supsystic_tbl_welcome_page_was_showed');
delete_option('supsystic_tbl_settings');
delete_site_option('supsystic_tbl_settings');
delete_option('dtgs_ac_remind');
delete_site_option('dtgs_ac_remind');
delete_option('dtgs_ac_subscribe');
delete_site_option('dtgs_ac_subscribe');
delete_option('dtgs_ac_disabled');
delete_site_option('dtgs_ac_disabled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%welcome_page_was_showed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%plug_welcome_show' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%plug_was_used' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('supsystic_tables_love_link_title');
delete_site_option('supsystic_tables_love_link_title');
delete_option('supsystic_tables_show_love_link');
delete_site_option('supsystic_tables_show_love_link');
delete_option('supsystic_tables_last_check_love_link');
delete_site_option('supsystic_tables_last_check_love_link');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'supsystic-tables-tutorial_was_showed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'supsystic-tables-tutorial_was_showed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'supsystic-tables-tutorial_was_showed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'supsystic-tables-tutorial_was_showed' ) );

