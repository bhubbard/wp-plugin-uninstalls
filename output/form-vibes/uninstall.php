<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fv_pro_purchase');
delete_site_option('fv_pro_purchase');
delete_option('fv_db_version');
delete_site_option('fv_db_version');
delete_option('fvSettings');
delete_site_option('fvSettings');
delete_option('fv_forms');
delete_site_option('fv_forms');
delete_option('fv-keys');
delete_site_option('fv-keys');
delete_option('fv_dashboard_widget_settings');
delete_site_option('fv_dashboard_widget_settings');
delete_option('fv-review');
delete_site_option('fv-review');

// Delete Transients
delete_transient('fv_pro_remind_later');
delete_site_transient('fv_pro_remind_later');
delete_transient('fv_remind_later');
delete_site_transient('fv_remind_later');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bricks_page_content_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bricks_page_content_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bricks_page_content_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bricks_page_content_2' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

