#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'wpfda_enable_feedback_email'
wp option delete 'wpfda_redirect_url'
wp option delete 'wpfda_button_label'
wp option delete 'wpfda_security'
wp option delete 'wpfda_security_custom_captcha_question'
wp option delete 'wpfda_security_custom_captcha_answer'
wp option delete 'wpfda_security_password_text'
wp option delete 'wpfda_title'
wp option delete 'wpfda_attribute'
wp option delete 'wpfda_delete_comments'
wp option delete 'wpfda_upgrade_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email_message'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email'"
wp option delete 'wpfda_enable_admin_email'
wp option delete 'wpfda_email_receipent'
wp option delete 'wpfda_admin_email_subject'
wp option delete 'wpfda_admin_email_message'
wp option delete 'wpfda_enable_user_email'
wp option delete 'wpfda_user_email_subject'
wp option delete 'wpfda_user_email_message'
wp option delete 'wpfda_feedback_email_receipent'
wp option delete 'wpfda_feedback_email_subject'
wp option delete 'wpfda_feedback_email_message'
wp option delete 'wpfda_enable_summary_email'
wp option delete 'wpfda_summary_email_receipent'
wp option delete 'wpfda_summary_email_subject'
wp option delete 'wpfda_summary_email_message'
wp option delete 'wpfda_deleted_users_date'
wp option delete 'rewrite_rules'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

