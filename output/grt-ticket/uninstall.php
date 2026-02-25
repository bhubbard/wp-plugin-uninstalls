<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grt_ticket_poll_interval');
delete_site_option('grt_ticket_poll_interval');
delete_option('grt_ticket_enable_browser_notification');
delete_site_option('grt_ticket_enable_browser_notification');
delete_option('grt_ticket_notification_sound');
delete_site_option('grt_ticket_notification_sound');
delete_option('grt_ticket_form_structure');
delete_site_option('grt_ticket_form_structure');
delete_option('grt_ticket_custom_fields');
delete_site_option('grt_ticket_custom_fields');
delete_option('grt_ticket_categories');
delete_site_option('grt_ticket_categories');
delete_option('grt_ticket_admin_name');
delete_site_option('grt_ticket_admin_name');
delete_option('grt_ticket_per_page');
delete_site_option('grt_ticket_per_page');
delete_option('grt_ticket_enable_supabase');
delete_site_option('grt_ticket_enable_supabase');
delete_option('grt_ticket_supabase_url');
delete_site_option('grt_ticket_supabase_url');
delete_option('grt_ticket_supabase_anon_key');
delete_site_option('grt_ticket_supabase_anon_key');
delete_option('grt_ticket_supabase_service_role');
delete_site_option('grt_ticket_supabase_service_role');
delete_option('grt_ticket_enable_email_notifications');
delete_site_option('grt_ticket_enable_email_notifications');
delete_option('grt_ticket_notification_emails');
delete_site_option('grt_ticket_notification_emails');
delete_option('grt_ticket_enable_whatsapp');
delete_site_option('grt_ticket_enable_whatsapp');
delete_option('grt_ticket_twilio_sid');
delete_site_option('grt_ticket_twilio_sid');
delete_option('grt_ticket_twilio_token');
delete_site_option('grt_ticket_twilio_token');
delete_option('grt_ticket_twilio_from');
delete_site_option('grt_ticket_twilio_from');
delete_option('grt_ticket_whatsapp_admin_number');
delete_site_option('grt_ticket_whatsapp_admin_number');
delete_option('grt_ticket_enable_direct_call');
delete_site_option('grt_ticket_enable_direct_call');
delete_option('grt_ticket_enable_direct_sms');
delete_site_option('grt_ticket_enable_direct_sms');
delete_option('grt_ticket_support_phone');
delete_site_option('grt_ticket_support_phone');
delete_option('grt_ticket_sms_body');
delete_site_option('grt_ticket_sms_body');
delete_option('grt_ticket_enable_piping');
delete_site_option('grt_ticket_enable_piping');
delete_option('grt_ticket_imap_host');
delete_site_option('grt_ticket_imap_host');
delete_option('grt_ticket_imap_port');
delete_site_option('grt_ticket_imap_port');
delete_option('grt_ticket_imap_user');
delete_site_option('grt_ticket_imap_user');
delete_option('grt_ticket_imap_pass');
delete_site_option('grt_ticket_imap_pass');
delete_option('grt_ticket_imap_ssl');
delete_site_option('grt_ticket_imap_ssl');
delete_option('grt_ticket_auto_close_days');
delete_site_option('grt_ticket_auto_close_days');
delete_option('grt_ticket_slack_webhook');
delete_site_option('grt_ticket_slack_webhook');
delete_option('grt_ticket_discord_webhook');
delete_site_option('grt_ticket_discord_webhook');
delete_option('grt_ticket_zapier_webhook');
delete_site_option('grt_ticket_zapier_webhook');
delete_option('grt_ticket_version');
delete_site_option('grt_ticket_version');
delete_option('grt_ticket_flush_rewrite_rules_v2');
delete_site_option('grt_ticket_flush_rewrite_rules_v2');

// Clear Cron Jobs
wp_clear_scheduled_hook('grt_ticket_check_emails_cron');
wp_clear_scheduled_hook('grt_ticket_auto_close_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'grt_profile_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'grt_profile_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'grt_profile_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'grt_profile_image' ) );

