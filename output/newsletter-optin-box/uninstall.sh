#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noptin_db_version'
wp option delete 'noptin_automation_rule_migrated_triggers'
wp option delete 'noptin_email_templates'
wp option delete 'noptin_emails_lifetime_revenue'
wp option delete 'noptin_templates'
wp option delete 'noptin_options'
wp option delete 'noptin_review_nag'
wp option delete 'noptin_black_friday_dismissed'
wp option delete '_noptin_has_welcomed'
wp option delete 'noptin_notices'
wp option delete 'noptin_install_date'
wp option delete 'noptin_logged_messages'
wp option delete 'noptin_db_schema'
wp option delete 'noptin_schema_missing_tables'
wp option delete 'noptin_integrations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_term_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'update_plugins'
wp transient delete '_noptin_helper_updates_count'
wp transient delete '_noptin_update_check'
wp transient delete 'noptin_com_connections'
wp transient delete 'noptin_subscription_sources'
wp transient delete 'noptin_installing'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_noptin_wpml_post_language_%' OR option_name LIKE '_site_transient_noptin_wpml_post_language_%'"

# Clear Cron Jobs
wp cron event delete 'wp_scheduled_auto_draft_delete'
wp cron event delete 'publish_future_post'
wp cron event delete 'noptin_daily_maintenance'
wp cron event delete 'noptin_migrate_subscribers'
wp cron event delete 'noptin_run_tasks'
wp cron event delete 'noptin_run_tasks_health_check'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'automation_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'automation_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'automation_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'automation_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_opens_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_opens_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_opens_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_opens_emails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_clicks_emails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_clicks_emails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_clicks_emails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_clicks_emails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noptin_dismiss_cron_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noptin_dismiss_cron_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noptin_dismiss_cron_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noptin_dismiss_cron_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'completed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'completed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'completed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'completed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paused'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paused'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paused'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paused'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bulk_email_last_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bulk_email_last_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bulk_email_last_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bulk_email_last_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_resend_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_resend_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_resend_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_resend_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_resent_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_resent_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_resent_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_resent_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_revenue'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_revenue'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_revenue'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_revenue'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_last_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_last_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_last_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_last_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_sends'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_sends'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_sends'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_sends'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'campaign_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'campaign_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'campaign_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'campaign_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_last_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_last_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_last_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_last_send'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_fails'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_fails'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_fails'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_fails'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_opens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_opens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_opens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_opens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_unsubscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_unsubscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_unsubscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_unsubscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_next_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_next_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_next_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_next_send'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_form_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_form_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_form_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_form_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_subscribers_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_subscribers_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_subscribers_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_subscribers_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_optin_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_optin_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_optin_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_optin_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_noptin_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_noptin_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_noptin_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_noptin_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_messages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noptin_sent_notification_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noptin_sent_notification_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noptin_sent_notification_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noptin_sent_notification_campaign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noptin_unsubscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noptin_unsubscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noptin_unsubscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noptin_unsubscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'noptin_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'noptin_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'noptin_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'noptin_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
