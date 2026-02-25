<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cus_rewrite_update_time');
delete_site_option('cus_rewrite_update_time');
delete_option('gnpub_installed_version');
delete_site_option('gnpub_installed_version');
delete_option('gnpub_last_activation');
delete_site_option('gnpub_last_activation');
delete_option('gnpub_last_deactivation');
delete_site_option('gnpub_last_deactivation');
delete_option('gnpub_new_options');
delete_site_option('gnpub_new_options');
delete_option('gnpub_shortcode_options');
delete_site_option('gnpub_shortcode_options');
delete_option('gnpub_google_index_api_settings');
delete_site_option('gnpub_google_index_api_settings');
delete_option('gnpub_giapi_requests');
delete_site_option('gnpub_giapi_requests');
delete_option('gnpub_include_featured_image');
delete_site_option('gnpub_include_featured_image');
delete_option('gnpub_is_default_feed');
delete_site_option('gnpub_is_default_feed');
delete_option('gnpub_websub_last_ping');
delete_site_option('gnpub_websub_last_ping');
delete_option('gnpub_google_last_fetch');
delete_site_option('gnpub_google_last_fetch');
delete_option('gnpub_news_sitmap');
delete_site_option('gnpub_news_sitmap');
delete_option('gnpub_setup_wizard_checklist');
delete_site_option('gnpub_setup_wizard_checklist');
delete_option('gnpub_activation_redirect');
delete_site_option('gnpub_activation_redirect');
delete_option('gnpub_pro_upgrade_license');
delete_site_option('gnpub_pro_upgrade_license');
delete_option('gnpub_feed_list');
delete_site_option('gnpub_feed_list');

// Delete Transients
delete_transient('gnpub_websub_lock');
delete_site_transient('gnpub_websub_lock');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gnpub_modified_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gnpub_modified_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gnpub_modified_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gnpub_modified_count' ) );

