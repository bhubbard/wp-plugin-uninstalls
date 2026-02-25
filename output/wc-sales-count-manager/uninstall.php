<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcscm_enable');
delete_site_option('wcscm_enable');
delete_option('wcscm_shope_page');
delete_site_option('wcscm_shope_page');
delete_option('wcscm-inlinecss');
delete_site_option('wcscm-inlinecss');
delete_option('wcscm_0_order_text');
delete_site_option('wcscm_0_order_text');
delete_option('wcscm_after_single');
delete_site_option('wcscm_after_single');
delete_option('wcscm_text');
delete_site_option('wcscm_text');
delete_option('wcscm_text_color');
delete_site_option('wcscm_text_color');
delete_option('wcscm_count_color');
delete_site_option('wcscm_count_color');
delete_option('wcscm_bg_color');
delete_site_option('wcscm_bg_color');
delete_option('wcscm_social_buttons');
delete_site_option('wcscm_social_buttons');
delete_option('wcscm_after_text');
delete_site_option('wcscm_after_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'total_sales' ) );

