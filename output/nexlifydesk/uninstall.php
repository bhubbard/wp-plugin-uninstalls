<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nexlifydesk_imap_settings');
delete_site_option('nexlifydesk_imap_settings');
delete_option('nexlifydesk_aws_processed_emails');
delete_site_option('nexlifydesk_aws_processed_emails');
delete_option('nexlifydesk_processed_emails');
delete_site_option('nexlifydesk_processed_emails');
delete_option('nexlifydesk_settings');
delete_site_option('nexlifydesk_settings');
delete_option('nexlifydesk_agent_positions');
delete_site_option('nexlifydesk_agent_positions');
delete_option('nexlifydesk_email_templates');
delete_site_option('nexlifydesk_email_templates');
delete_option('nexlifydesk_version');
delete_site_option('nexlifydesk_version');
delete_option('nexlifydesk_last_ticket_number');
delete_site_option('nexlifydesk_last_ticket_number');
delete_option('nexlifydesk_db_version');
delete_site_option('nexlifydesk_db_version');
delete_option('nexlifydesk_password_encryption_migration');
delete_site_option('nexlifydesk_password_encryption_migration');
delete_option('nexlifydesk_template_notice_dismissed');
delete_site_option('nexlifydesk_template_notice_dismissed');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('nexlifydesk_google_oauth_state');
delete_site_transient('nexlifydesk_google_oauth_state');
delete_transient('nexlifydesk_sla_tickets');
delete_site_transient('nexlifydesk_sla_tickets');
delete_transient('nexlifydesk_resolved_tickets');
delete_site_transient('nexlifydesk_resolved_tickets');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('nexlifydesk_sla_check');
wp_clear_scheduled_hook('nexlifydesk_auto_close_tickets');
wp_clear_scheduled_hook('nexlifydesk_check_orphaned_tickets');
wp_clear_scheduled_hook('nexlifydesk_fetch_emails_event');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'customer_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'customer_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'customer_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'customer_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nexlifydesk_agent_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nexlifydesk_agent_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nexlifydesk_agent_position' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nexlifydesk_agent_position' ) );

