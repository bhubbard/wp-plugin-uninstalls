<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adnk_importer_options');
delete_site_option('adnk_importer_options');
delete_option('adnk_settings_options');
delete_site_option('adnk_settings_options');
delete_option('adn_site_active');
delete_site_option('adn_site_active');

// Delete Transients
delete_transient('adnk_import_running');
delete_site_transient('adnk_import_running');

// Clear Cron Jobs
wp_clear_scheduled_hook('adnk_import_event');
wp_clear_scheduled_hook('adki_add_cron_onceaday');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adkn_guid_post_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adkn_guid_post_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adkn_guid_post_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adkn_guid_post_feed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'adkn_feed_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'adkn_feed_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'adkn_feed_category' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'adkn_feed_category' ) );

