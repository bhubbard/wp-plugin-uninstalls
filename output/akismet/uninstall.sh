#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Activated_Akismet'
wp option delete 'wordpress_api_key'
wp option delete 'akismet_spam_count'
wp option delete 'akismet_show_user_comments_approved'
wp option delete 'akismet_available_servers'
wp option delete 'akismet_connectivity_time'
wp option delete 'akismet_alert_code'
wp option delete 'akismet_alert_msg'
wp option delete 'akismet_alert_api_calls'
wp option delete 'akismet_alert_usage_limit'
wp option delete 'akismet_alert_upgrade_plan'
wp option delete 'akismet_alert_upgrade_url'
wp option delete 'akismet_alert_upgrade_type'
wp option delete 'akismet_alert_upgrade_via_support'
wp option delete 'akismet_alert_recommended_plan_name'
wp option delete 'akismet_strictness'
wp option delete 'akismet_discard_month'
wp option delete 'akismet_comment_form_privacy_notice'
wp option delete 'akismet_comment_nonce'
wp option delete 'akismet_ssl_disabled'

# Clear Cron Jobs
wp cron event delete 'akismet_schedule_cron_recheck'
wp cron event delete 'akismet_scheduled_delete'
wp cron event delete 'akismet_email_fallback'
wp cron event delete 'akismet_approval_fallback'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_skipped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_skipped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_skipped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_skipped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_user_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_user_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_user_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_user_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_as_submitted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_as_submitted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_as_submitted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_as_submitted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_delayed_moderation_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_delayed_moderation_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_delayed_moderation_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_delayed_moderation_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_delay_moderation_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_delay_moderation_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_delay_moderation_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_delay_moderation_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_schedule_approval_fallback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_schedule_approval_fallback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_schedule_approval_fallback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_schedule_approval_fallback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_schedule_email_fallback'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_schedule_email_fallback'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_schedule_email_fallback'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_schedule_email_fallback'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_rechecking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_rechecking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_rechecking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_rechecking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_guid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_guid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_guid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_guid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'akismet_skipped_microtime'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'akismet_skipped_microtime'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'akismet_skipped_microtime'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'akismet_skipped_microtime'"
