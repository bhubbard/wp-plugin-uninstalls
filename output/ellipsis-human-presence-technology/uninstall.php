<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-human-presence');
delete_site_option('wp-human-presence');
delete_option('ninja_forms_version');
delete_site_option('ninja_forms_version');
delete_option('ninja_forms_load_deprecated');
delete_site_option('ninja_forms_load_deprecated');
delete_option('wp-human-presence-upgrade-3-4-6');
delete_site_option('wp-human-presence-upgrade-3-4-6');

// Delete Transients
delete_transient('human_presence_license');
delete_site_transient('human_presence_license');

// Clear Cron Jobs
wp_clear_scheduled_hook('human_presence_autoprotect_scan');
wp_clear_scheduled_hook('hp_autoprotect_scan');
wp_clear_scheduled_hook('hpres_autoprotect_scan');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );

