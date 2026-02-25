#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'authority_mailer_smtp_options'
wp option delete 'authority_mailer_emails_sent_count'
wp option delete 'authority_mailer_first_email_date'
wp option delete 'authority_mailer_review_completed'
wp option delete 'authority_mailer_review_dismissed_date'
wp option delete 'authority_mailer_uninstall_settings'
wp option delete 'authority_mailer_onboarding_completed'
wp option delete 'authority_mailer_version'
wp option delete 'authority-mailer_premium_features'
wp option delete 'authority-mailer_analytics_db_version'
wp option delete 'authority_mailer_notification_rules'
wp option delete 'authority_mailer_notification_settings'
wp option delete 'authority_mailer_compliance_settings'
wp option delete 'authority_mailer_custom_templates'
wp option delete 'authority_mailer_health_alerts'
wp option delete 'authority_mailer_failover_mode'
wp option delete 'authority_mailer_failover_providers'
wp option delete 'authority_mailer_rr_index'
wp option delete 'authority_mailer_email_defaults'
wp option delete 'authority_mailer_dismissed_notices'
wp option delete 'authority_mailer_smtp_network_settings'

# Delete Transients
wp transient delete 'authority_mailer_smtp_activation_redirect'
wp transient delete 'authority_mailer_outbound_check'

# Clear Cron Jobs
wp cron event delete 'authority_mailer_email_health_check'
wp cron event delete 'authority_mailer_cleanup_old_events'

