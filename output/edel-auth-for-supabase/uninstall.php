<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eafs_supabase_url');
delete_site_option('eafs_supabase_url');
delete_option('eafs_supabase_anon_key');
delete_site_option('eafs_supabase_anon_key');
delete_option('eafs_supabase_service_role_key');
delete_site_option('eafs_supabase_service_role_key');
delete_option('eafs_main_color');
delete_site_option('eafs_main_color');
delete_option('eafs_auth_method_email');
delete_site_option('eafs_auth_method_email');
delete_option('eafs_auth_method_google');
delete_site_option('eafs_auth_method_google');
delete_option('eafs_auth_method_magiclink');
delete_site_option('eafs_auth_method_magiclink');
delete_option('eafs_enable_welcome_email');
delete_site_option('eafs_enable_welcome_email');
delete_option('eafs_welcome_sender_name');
delete_site_option('eafs_welcome_sender_name');
delete_option('eafs_welcome_sender_email');
delete_site_option('eafs_welcome_sender_email');
delete_option('eafs_welcome_subject');
delete_site_option('eafs_welcome_subject');
delete_option('eafs_welcome_body');
delete_site_option('eafs_welcome_body');
delete_option('eafs_redirect_after_login');
delete_site_option('eafs_redirect_after_login');
delete_option('eafs_redirect_after_logout');
delete_site_option('eafs_redirect_after_logout');
delete_option('eafs_forgot_password_url');
delete_site_option('eafs_forgot_password_url');
delete_option('eafs_password_reset_url');
delete_site_option('eafs_password_reset_url');
delete_option('eafs_enable_keep_alive');
delete_site_option('eafs_enable_keep_alive');

// Clear Cron Jobs
wp_clear_scheduled_hook('eafs_cron_keep_alive');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'eafs_supabase_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'eafs_supabase_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'eafs_supabase_uuid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'eafs_supabase_uuid' ) );

