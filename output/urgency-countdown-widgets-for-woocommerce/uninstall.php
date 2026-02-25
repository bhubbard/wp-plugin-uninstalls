<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('urgcw_urgency_countdown_timers');
delete_site_option('urgcw_urgency_countdown_timers');
delete_option('urgcw_urgency_countdown_animation');
delete_site_option('urgcw_urgency_countdown_animation');
delete_option('urgcw_urgency_countdown_look');
delete_site_option('urgcw_urgency_countdown_look');
delete_option('urgcw_urgency_font_color');
delete_site_option('urgcw_urgency_font_color');
delete_option('urgcw_urgency_font_family');
delete_site_option('urgcw_urgency_font_family');
delete_option('urgcw_urgency_bg_color');
delete_site_option('urgcw_urgency_bg_color');
delete_option('urgcw_urgency_widgets');
delete_site_option('urgcw_urgency_widgets');
delete_option('urgcw_global_urgency_widget_enabled');
delete_site_option('urgcw_global_urgency_widget_enabled');

// Delete Transients
delete_transient('urgcw_show_woocommerce_notice');
delete_site_transient('urgcw_show_woocommerce_notice');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'total_sales' ) );

