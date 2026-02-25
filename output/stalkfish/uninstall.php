<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('classic-editor-allow-users');
delete_site_option('classic-editor-allow-users');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('sf_queue_flush_rewrite_rules');
delete_site_option('sf_queue_flush_rewrite_rules');
delete_option('sf_exclude_rules');
delete_site_option('sf_exclude_rules');
delete_option('sf_app_api_key');
delete_site_option('sf_app_api_key');

// Delete Transients
delete_transient('stalkfish_last_error');
delete_site_transient('stalkfish_last_error');
delete_transient('stalkfish_connect_timeout');
delete_site_transient('stalkfish_connect_timeout');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

