<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acw_timeout_probe_last');
delete_site_option('acw_timeout_probe_last');
delete_option('ai_content_wizard_wizard_completed');
delete_site_option('ai_content_wizard_wizard_completed');
delete_option('ai_content_wizard_completed_steps');
delete_site_option('ai_content_wizard_completed_steps');
delete_option('ai_content_wizard_plugin_version');
delete_site_option('ai_content_wizard_plugin_version');
delete_option('ai_content_wizard_redirect_on_activation');
delete_site_option('ai_content_wizard_redirect_on_activation');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ai_content_wizard_content_plan_notice_dismissed');
delete_site_option('ai_content_wizard_content_plan_notice_dismissed');

// Delete Transients
delete_transient('ai_content_wizard_image_model_changed');
delete_site_transient('ai_content_wizard_image_model_changed');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ai_content_wizard_generate_post_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

