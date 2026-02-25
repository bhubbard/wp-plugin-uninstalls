<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ddfw_delivery_options_group');
delete_site_option('ddfw_delivery_options_group');
delete_option('ddfw_enable_delivery');
delete_site_option('ddfw_enable_delivery');
delete_option('ddfw_required_delivery');
delete_site_option('ddfw_required_delivery');
delete_option('ddfw_disable_virtual');
delete_site_option('ddfw_disable_virtual');
delete_option('ddfw_delivery_error_msg');
delete_site_option('ddfw_delivery_error_msg');
delete_option('ddfw_delivery_date_title');
delete_site_option('ddfw_delivery_date_title');
delete_option('ddfw_delivery_date_email_title');
delete_site_option('ddfw_delivery_date_email_title');
delete_option('ddfw_delivery_date_option_title');
delete_site_option('ddfw_delivery_date_option_title');
delete_option('ddfw_disable_x_days');
delete_site_option('ddfw_disable_x_days');
delete_option('ddfw_specific_day');
delete_site_option('ddfw_specific_day');
delete_option('ddfw_disable_monday');
delete_site_option('ddfw_disable_monday');
delete_option('ddfw_disable_tuesday');
delete_site_option('ddfw_disable_tuesday');
delete_option('ddfw_disable_wednesday');
delete_site_option('ddfw_disable_wednesday');
delete_option('ddfw_disable_thursday');
delete_site_option('ddfw_disable_thursday');
delete_option('ddfw_disable_friday');
delete_site_option('ddfw_disable_friday');
delete_option('ddfw_disable_saturday');
delete_site_option('ddfw_disable_saturday');
delete_option('ddfw_disable_sunday');
delete_site_option('ddfw_disable_sunday');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ddfw_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ddfw_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ddfw_delivery_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ddfw_delivery_date' ) );

