<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cbr_pro_update_ignore_377');
delete_site_option('cbr_pro_update_ignore_377');
delete_option('product_visibility');
delete_site_option('product_visibility');
delete_option('wpcbr_hide_restricted_product_variation');
delete_site_option('wpcbr_hide_restricted_product_variation');
delete_option('wpcbr_make_non_purchasable');
delete_site_option('wpcbr_make_non_purchasable');
delete_option('wpcbr_hide_product_price');
delete_site_option('wpcbr_hide_product_price');
delete_option('wpcbr_debug_mode');
delete_site_option('wpcbr_debug_mode');
delete_option('wpcbr_message_position');
delete_site_option('wpcbr_message_position');
delete_option('wpcbr_default_message');
delete_site_option('wpcbr_default_message');
delete_option('wpcbr_force_geo_location');
delete_site_option('wpcbr_force_geo_location');
delete_option('wpcbr_redirect_404_page');
delete_site_option('wpcbr_redirect_404_page');
delete_option('wpcbr_choose_the_page_to_redirect');
delete_site_option('wpcbr_choose_the_page_to_redirect');
delete_option('cbr_notice_ignore');
delete_site_option('cbr_notice_ignore');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_data_selector' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_optin_email_notification' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_enable_usage_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_tracker_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_fz_country_restriction_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_fz_country_restriction_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_fz_country_restriction_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_fz_country_restriction_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_restricted_countries' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_restricted_countries' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_restricted_countries' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_restricted_countries' ) );

