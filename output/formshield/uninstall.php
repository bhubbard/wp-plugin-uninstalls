<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('formshield_seen_messages');
delete_site_option('formshield_seen_messages');
delete_option('formshield_email_queue');
delete_site_option('formshield_email_queue');
delete_option('formshield_last_periodic_report');
delete_site_option('formshield_last_periodic_report');
delete_option('et_theme_builder');
delete_site_option('et_theme_builder');
delete_option('formshield_options');
delete_site_option('formshield_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_updated' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('formshield_ip_blacklist');
delete_site_option('formshield_ip_blacklist');
delete_option('wp-human-presence');
delete_site_option('wp-human-presence');
delete_option('formshield_version');
delete_site_option('formshield_version');
delete_option('ninja_forms_version');
delete_site_option('ninja_forms_version');
delete_option('ninja_forms_load_deprecated');
delete_site_option('ninja_forms_load_deprecated');

// Delete Transients
delete_transient('dcd_divi_scan');
delete_site_transient('dcd_divi_scan');

// Clear Cron Jobs
wp_clear_scheduled_hook('formshield_send_periodic_report');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpforms_entries_count' ) );

