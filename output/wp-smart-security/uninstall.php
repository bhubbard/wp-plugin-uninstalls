<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('si_captcha');
delete_site_option('si_captcha');
delete_option('bitset_wpspro');
delete_site_option('bitset_wpspro');
delete_option('si_captcha_comment');
delete_site_option('si_captcha_comment');
delete_option('wpspro_file_log');
delete_site_option('wpspro_file_log');
delete_option('wpspro_intrusion_warning');
delete_site_option('wpspro_intrusion_warning');
delete_option('WPSPRO_options');
delete_site_option('WPSPRO_options');
delete_option('WPSPRO_Login_Slug');
delete_site_option('WPSPRO_Login_Slug');
delete_option('WPSPRO_versions');
delete_site_option('WPSPRO_versions');
delete_option('wpspro_filecheck');
delete_site_option('wpspro_filecheck');
delete_option('wpspro_awaymode');
delete_site_option('wpspro_awaymode');

// Delete Transients
delete_transient('wpspro_away');
delete_site_transient('wpspro_away');
delete_transient('bitset_wpspro_backup');
delete_site_transient('bitset_wpspro_backup');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_update_plugins');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wpspro_backup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpspro_enable_ssl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpspro_enable_ssl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpspro_enable_ssl' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpspro_enable_ssl' ) );

