#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmsilm_activation_redirect'
wp option delete 'dmsilm_admin_caps_added'
wp option delete 'dmsilm_settings'
wp option delete 'dmsilm_license_settings'
wp option delete 'dmsilm_email_settings'
wp option delete 'dmsilm_api_settings'
wp option delete 'dmsilm_portal_settings'
wp option delete 'dmsilm_advanced_settings'
wp option delete 'dmsilm_remove_data_on_uninstall'
wp option delete 'dmsilm_support_channels'
wp option delete 'dmsilm_general_settings'
wp option delete 'dmsilm_email_from_name'
wp option delete 'dmsilm_email_from_address'
wp option delete 'dmsilm_email_reply_to'
wp option delete 'dmsilm_email_bcc_enabled'
wp option delete 'dmsilm_email_bcc_address'
wp option delete 'dmsilm_email_footer'
wp option delete 'dmsilm_email_queue_enabled'
wp option delete 'dmsilm_email_queue_interval'
wp option delete 'dmsilm_email_rate_limit'
wp option delete 'dmsilm_email_max_retries'
wp option delete 'dmsilm_email_retry_strategy'
wp option delete 'dmsilm_email_alert_on_failure'
wp option delete 'dmsilm_email_alert_address'
wp option delete 'dmsilm_email_logging_enabled'
wp option delete 'dmsilm_email_log_retention_success'
wp option delete 'dmsilm_email_log_retention_failed'
wp option delete 'dmsilm_email_log_retention_tracking'
wp option delete 'dmsilm_email_debug_mode'
wp option delete 'dmsilm_email_anonymize_after_retention'
wp option delete 'dmsilm_email_log_ip_addresses'
wp option delete 'dmsilm_email_customer_default_enabled'
wp option delete 'dmsilm_email_reminder_timing'
wp option delete 'dmsilm_email_admin_recipients'
wp option delete 'dmsilm_email_send_to_all_admins'
wp option delete 'dmsilm_email_batch_size'
wp option delete 'dmsilm_email_test_mode'
wp option delete 'dmsilm_email_test_redirect_address'
wp option delete 'dmsilm_portal_slug'
wp option delete 'dmsilm_api_cors_enabled'
wp option delete 'dmsilm_api_cors_origins'
wp option delete 'dmsilm_api_test_mode'
wp option delete 'dmsilm_api_logging_enabled'
wp option delete 'dmsilm_background_test_mode'
wp option delete 'dmsilm_job_failure_notify_email'
wp option delete 'dmsilm_background_jobs_paused'
wp option delete 'dmsilm_jobs_paused'
wp option delete 'dmsilm_expiration_reminder_days'
wp option delete 'dmsilm_deactivate_on_expiration'
wp option delete 'dmsilm_stale_threshold_days'
wp option delete 'dmsilm_auto_deactivate_threshold_days'
wp option delete 'dmsilm_only_cleanup_active_licenses'
wp option delete 'dmsilm_never_cleanup_lifetime'
wp option delete 'dmsilm_enable_stale_cleanup'
wp option delete 'dmsilm_admin_notifications'
wp option delete 'dmsilm_support_email'
wp option delete 'dmsilm_support_url'
wp option delete 'dmsilm_admin_email'
wp option delete 'dmsilm_unsubscribed_emails'
wp option delete 'dmsilm_logo_url'
wp option delete 'dmsilm_log_destination'
wp option delete 'dmsilm_version'
wp option delete 'dmsilm_installed_date'
wp option delete 'dmsilm_environment'
wp option delete 'dmsilm_last_upgrade_date'
wp option delete 'dmsilm_auto_remove_in_dev'
wp option delete 'dmsilm_license_key_format'

# Delete Transients
wp transient delete 'dmsilm_admin_notice'
wp transient delete 'dmsilm_admin_error'
wp transient delete 'dmsilm_jobs_schedule_check'
wp transient delete 'dmsilm_emails_sent_this_minute'
wp transient delete 'dmsilm_activation_dev_notice'

# Clear Cron Jobs
wp cron event delete 'dmsilm_hourly_tasks'
wp cron event delete 'dmsilm_daily_tasks'
wp cron event delete 'dmsilm_weekly_tasks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_licensed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_licensed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_licensed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_licensed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_license_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_license_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_license_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_license_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_activation_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_activation_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_activation_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_activation_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dmsilm_email_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dmsilm_email_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dmsilm_email_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dmsilm_email_preferences'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_requires_support_for_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_requires_support_for_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_requires_support_for_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_requires_support_for_downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_license_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_license_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_license_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_license_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_enable_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_enable_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_enable_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_enable_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_subscription_trial_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_subscription_trial_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_subscription_trial_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_subscription_trial_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_support_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_support_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_support_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_support_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_support_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_support_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_support_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_support_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_requires_support_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_requires_support_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_requires_support_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_requires_support_downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_support_channels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_support_channels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_support_channels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_support_channels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_override_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_override_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_override_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_override_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_override_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_override_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_override_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_override_downloads'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_override_tickets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_override_tickets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_override_tickets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_override_tickets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_override_sla_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_override_sla_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_override_sla_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_override_sla_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_override_sla_hours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_override_sla_hours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_override_sla_hours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_override_sla_hours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_override_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_override_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_override_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_override_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_support_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_support_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_support_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_support_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_allows_tickets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_allows_tickets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_allows_tickets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_allows_tickets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_allows_premium_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_allows_premium_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_allows_premium_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_allows_premium_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_priority_support'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_priority_support'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_priority_support'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_priority_support'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_dedicated_engineer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_dedicated_engineer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_dedicated_engineer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_dedicated_engineer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_response_time_sla'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_response_time_sla'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_response_time_sla'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_response_time_sla'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_included_incidents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_included_incidents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_included_incidents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_included_incidents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_is_beta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_is_beta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_is_beta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_is_beta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dmsilm_is_stable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dmsilm_is_stable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dmsilm_is_stable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dmsilm_is_stable'"
