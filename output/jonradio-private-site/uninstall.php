<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jr_ps_log');
delete_site_option('jr_ps_log');
delete_option('jr_ps_debug_mode');
delete_site_option('jr_ps_debug_mode');
delete_option('jr_ps_spam_guard_log');
delete_site_option('jr_ps_spam_guard_log');
delete_option('jr_ps_settings');
delete_site_option('jr_ps_settings');
delete_option('jr_ps_internal_settings');
delete_site_option('jr_ps_internal_settings');
delete_option('jr_ps_first_run_time');
delete_site_option('jr_ps_first_run_time');
delete_option('jr_ps_activated');
delete_site_option('jr_ps_activated');
delete_option('jr_ps_licenses');
delete_site_option('jr_ps_licenses');
delete_option('jr_ps_donate_log');
delete_site_option('jr_ps_donate_log');
delete_option('jr_ps_robots_status');
delete_site_option('jr_ps_robots_status');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

