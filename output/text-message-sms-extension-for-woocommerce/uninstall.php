<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbiztextwc_placeholders');
delete_site_option('wpbiztextwc_placeholders');
delete_option('wpbiztextwc_placeholders_fixed');
delete_site_option('wpbiztextwc_placeholders_fixed');
delete_option('wpbiztextwc_enable_status_changes_chbx');
delete_site_option('wpbiztextwc_enable_status_changes_chbx');
delete_option('wpbiztextwc_enable_status_changes_admin_chbx');
delete_site_option('wpbiztextwc_enable_status_changes_admin_chbx');
delete_option('wpbiztextwc_hidden_field');
delete_site_option('wpbiztextwc_hidden_field');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notif_number' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpbiztextwc_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_order_txtarea' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpbiztextwc_add_mobile_field');
delete_site_option('wpbiztextwc_add_mobile_field');
delete_option('wpbiztextwc_mobile_field_info');
delete_site_option('wpbiztextwc_mobile_field_info');
delete_option('wpbiztextwc_mobile_field_requried');
delete_site_option('wpbiztextwc_mobile_field_requried');
delete_option('wpbiztextwc_mobile_field_use_phone');
delete_site_option('wpbiztextwc_mobile_field_use_phone');
delete_option('wpbiztextwc_set_change_order_admin_txtarea');
delete_site_option('wpbiztextwc_set_change_order_admin_txtarea');
delete_option('wpbiztextwc_set_change_order_txtarea');
delete_site_option('wpbiztextwc_set_change_order_txtarea');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_order_admin_chbx' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_order_admin_txtarea' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_order_chbx' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpbiztextwc_notif_number');
delete_site_option('wpbiztextwc_notif_number');
delete_option('wpbiztextwc_notif_number_nickname');
delete_site_option('wpbiztextwc_notif_number_nickname');
delete_option('wpbiztextwc_biztext_id');
delete_site_option('wpbiztextwc_biztext_id');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_billing_mobile_wpbiztextwc_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_billing_mobile_wpbiztextwc_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_billing_mobile_wpbiztextwc_phone' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_billing_mobile_wpbiztextwc_phone' ) );

