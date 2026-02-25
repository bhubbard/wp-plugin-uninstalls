-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('authority_mailer_smtp_options', 'authority_mailer_emails_sent_count', 'authority_mailer_first_email_date', 'authority_mailer_review_completed', 'authority_mailer_review_dismissed_date', 'authority_mailer_uninstall_settings', 'authority_mailer_onboarding_completed', 'authority_mailer_version', 'authority-mailer_premium_features', 'authority-mailer_analytics_db_version', 'authority_mailer_notification_rules', 'authority_mailer_notification_settings', 'authority_mailer_compliance_settings', 'authority_mailer_custom_templates', 'authority_mailer_health_alerts', 'authority_mailer_failover_mode', 'authority_mailer_failover_providers', 'authority_mailer_rr_index', 'authority_mailer_email_defaults', 'authority_mailer_dismissed_notices', 'authority_mailer_smtp_network_settings', 'authority_mailer_smtp_activation_redirect', 'authority_mailer_outbound_check');

