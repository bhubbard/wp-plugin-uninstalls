<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clients_db_version');
delete_site_option('clients_db_version');
delete_option('wp-easy-crm-settings');
delete_site_option('wp-easy-crm-settings');
delete_option('eacr_recaptcha_site_key');
delete_site_option('eacr_recaptcha_site_key');
delete_option('eacr_recaptcha_secret_key');
delete_site_option('eacr_recaptcha_secret_key');
delete_option('eacr_enable_region_in_contact_form');
delete_site_option('eacr_enable_region_in_contact_form');
delete_option('eacr_exclude_general_region');
delete_site_option('eacr_exclude_general_region');
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');

// Clear Cron Jobs
wp_clear_scheduled_hook('eacr_send_email_reminder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'region_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'region_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'region_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'region_%' ) );

