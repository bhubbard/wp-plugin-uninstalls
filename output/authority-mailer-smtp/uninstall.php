<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('authority_mailer_smtp_options');
delete_site_option('authority_mailer_smtp_options');
delete_option('authority_mailer_emails_sent_count');
delete_site_option('authority_mailer_emails_sent_count');
delete_option('authority_mailer_first_email_date');
delete_site_option('authority_mailer_first_email_date');
delete_option('authority_mailer_review_completed');
delete_site_option('authority_mailer_review_completed');
delete_option('authority_mailer_review_dismissed_date');
delete_site_option('authority_mailer_review_dismissed_date');
delete_option('authority_mailer_uninstall_settings');
delete_site_option('authority_mailer_uninstall_settings');
delete_option('authority_mailer_onboarding_completed');
delete_site_option('authority_mailer_onboarding_completed');
delete_option('authority_mailer_version');
delete_site_option('authority_mailer_version');
delete_option('authority-mailer_premium_features');
delete_site_option('authority-mailer_premium_features');
delete_option('authority-mailer_analytics_db_version');
delete_site_option('authority-mailer_analytics_db_version');
delete_option('authority_mailer_notification_rules');
delete_site_option('authority_mailer_notification_rules');
delete_option('authority_mailer_notification_settings');
delete_site_option('authority_mailer_notification_settings');
delete_option('authority_mailer_compliance_settings');
delete_site_option('authority_mailer_compliance_settings');
delete_option('authority_mailer_custom_templates');
delete_site_option('authority_mailer_custom_templates');
delete_option('authority_mailer_health_alerts');
delete_site_option('authority_mailer_health_alerts');
delete_option('authority_mailer_failover_mode');
delete_site_option('authority_mailer_failover_mode');
delete_option('authority_mailer_failover_providers');
delete_site_option('authority_mailer_failover_providers');
delete_option('authority_mailer_rr_index');
delete_site_option('authority_mailer_rr_index');
delete_option('authority_mailer_email_defaults');
delete_site_option('authority_mailer_email_defaults');
delete_option('authority_mailer_dismissed_notices');
delete_site_option('authority_mailer_dismissed_notices');
delete_option('authority_mailer_smtp_network_settings');
delete_site_option('authority_mailer_smtp_network_settings');

// Delete Transients
delete_transient('authority_mailer_smtp_activation_redirect');
delete_site_transient('authority_mailer_smtp_activation_redirect');
delete_transient('authority_mailer_outbound_check');
delete_site_transient('authority_mailer_outbound_check');

// Clear Cron Jobs
wp_clear_scheduled_hook('authority_mailer_email_health_check');
wp_clear_scheduled_hook('authority_mailer_cleanup_old_events');

