<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('init_plugin_suite_pulse_for_discord_enable');
delete_site_option('init_plugin_suite_pulse_for_discord_enable');
delete_option('init_plugin_suite_pulse_for_discord_webhook_url');
delete_site_option('init_plugin_suite_pulse_for_discord_webhook_url');
delete_option('init_plugin_suite_pulse_for_discord_username');
delete_site_option('init_plugin_suite_pulse_for_discord_username');
delete_option('init_plugin_suite_pulse_for_discord_avatar');
delete_site_option('init_plugin_suite_pulse_for_discord_avatar');
delete_option('init_plugin_suite_pulse_for_discord_notify_new_post');
delete_site_option('init_plugin_suite_pulse_for_discord_notify_new_post');
delete_option('init_plugin_suite_pulse_for_discord_notify_post_update');
delete_site_option('init_plugin_suite_pulse_for_discord_notify_post_update');
delete_option('init_plugin_suite_pulse_for_discord_include_featured');
delete_site_option('init_plugin_suite_pulse_for_discord_include_featured');
delete_option('init_plugin_suite_pulse_for_discord_image_size');
delete_site_option('init_plugin_suite_pulse_for_discord_image_size');
delete_option('init_plugin_suite_pulse_for_discord_message_template_post');
delete_site_option('init_plugin_suite_pulse_for_discord_message_template_post');
delete_option('init_plugin_suite_pulse_for_discord_timeout');
delete_site_option('init_plugin_suite_pulse_for_discord_timeout');
delete_option('init_plugin_suite_pulse_for_discord_retry');
delete_site_option('init_plugin_suite_pulse_for_discord_retry');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'init_plugin_suite_pulse_for_discord_role_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'init_plugin_suite_pulse_for_discord_role_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'init_plugin_suite_pulse_for_discord_role_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'init_plugin_suite_pulse_for_discord_role_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'init_plugin_suite_pulse_for_discord_all_role_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'init_plugin_suite_pulse_for_discord_all_role_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'init_plugin_suite_pulse_for_discord_all_role_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'init_plugin_suite_pulse_for_discord_all_role_id' ) );

