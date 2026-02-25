<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unlimited_push_notifications_by_larapush_access');
delete_site_option('unlimited_push_notifications_by_larapush_access');
delete_option('unlimited_push_notifications_by_larapush_panel_url');
delete_site_option('unlimited_push_notifications_by_larapush_panel_url');
delete_option('unlimited_push_notifications_by_larapush_panel_email');
delete_site_option('unlimited_push_notifications_by_larapush_panel_email');
delete_option('unlimited_push_notifications_by_larapush_panel_password');
delete_site_option('unlimited_push_notifications_by_larapush_panel_password');
delete_option('unlimited_push_notifications_by_larapush_panel_plan');
delete_site_option('unlimited_push_notifications_by_larapush_panel_plan');
delete_option('unlimited_push_notifications_by_larapush_panel_version');
delete_site_option('unlimited_push_notifications_by_larapush_panel_version');
delete_option('unlimited_push_notifications_by_larapush_panel_domains');
delete_site_option('unlimited_push_notifications_by_larapush_panel_domains');
delete_option('unlimited_push_notifications_by_larapush_panel_domains_selected');
delete_site_option('unlimited_push_notifications_by_larapush_panel_domains_selected');
delete_option('unlimited_push_notifications_by_larapush_js_filenames_for_site');
delete_site_option('unlimited_push_notifications_by_larapush_js_filenames_for_site');
delete_option('unlimited_push_notifications_by_larapush_configure_pwa_ios');
delete_site_option('unlimited_push_notifications_by_larapush_configure_pwa_ios');
delete_option('unlimited_push_notifications_by_larapush_codes');
delete_site_option('unlimited_push_notifications_by_larapush_codes');
delete_option('unlimited_push_notifications_by_larapush_panel_integration_tried');
delete_site_option('unlimited_push_notifications_by_larapush_panel_integration_tried');
delete_option('unlimited_push_notifications_by_larapush_enable_push_notifications');
delete_site_option('unlimited_push_notifications_by_larapush_enable_push_notifications');
delete_option('unlimited_push_notifications_by_larapush_push_on_publish');
delete_site_option('unlimited_push_notifications_by_larapush_push_on_publish');
delete_option('unlimited_push_notifications_by_larapush_push_on_publish_delay');
delete_site_option('unlimited_push_notifications_by_larapush_push_on_publish_delay');
delete_option('unlimited_push_notifications_by_larapush_push_on_publish_for_webstories');
delete_site_option('unlimited_push_notifications_by_larapush_push_on_publish_for_webstories');
delete_option('unlimited_push_notifications_by_larapush_add_code_for_amp');
delete_site_option('unlimited_push_notifications_by_larapush_add_code_for_amp');
delete_option('unlimited_push_notifications_by_larapush_amp_code_location');
delete_site_option('unlimited_push_notifications_by_larapush_amp_code_location');

// Delete Transients
delete_transient('larapush_error');
delete_site_transient('larapush_error');
delete_transient('larapush_success');
delete_site_transient('larapush_success');

// Clear Cron Jobs
wp_clear_scheduled_hook('unlimited_push_notifications_by_larapush_send_scheduled_notification');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_genesis_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_genesis_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_genesis_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_genesis_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seopress_titles_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seopress_titles_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seopress_titles_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seopress_titles_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseo_og_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseo_og_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseo_og_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseo_og_description' ) );

