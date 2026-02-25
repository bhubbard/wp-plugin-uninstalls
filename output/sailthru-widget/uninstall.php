<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sailthru_content_settings');
delete_site_option('sailthru_content_settings');
delete_option('sailthru_setup_complete');
delete_site_option('sailthru_setup_complete');
delete_option('sailthru_setup_options');
delete_site_option('sailthru_setup_options');
delete_option('sailthru_plugin_version');
delete_site_option('sailthru_plugin_version');
delete_option('sailthru_forms_options');
delete_site_option('sailthru_forms_options');
delete_option('sailthru_forms_key');
delete_site_option('sailthru_forms_key');
delete_option('sailthru_concierge_options');
delete_site_option('sailthru_concierge_options');
delete_option('sailthru_scout_options');
delete_site_option('sailthru_scout_options');
delete_option('sailthru_override_wp_mail');
delete_site_option('sailthru_override_wp_mail');
delete_option('sailthru_integrations_options');
delete_site_option('sailthru_integrations_options');
delete_option('sailthru_api_validated');
delete_site_option('sailthru_api_validated');
delete_option('sailthru_settings');
delete_site_option('sailthru_settings');
delete_option('sailthru_customfields_order');
delete_site_option('sailthru_customfields_order');
delete_option('sailthru_customfield_order');
delete_site_option('sailthru_customfield_order');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sailthru_post_expiration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sailthru_post_expiration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sailthru_post_expiration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sailthru_post_expiration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sailthru_meta_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sailthru_meta_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sailthru_meta_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sailthru_meta_tags' ) );

