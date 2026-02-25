#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swpsmtp_options'
wp option delete 'smtp_test_mail'
wp option delete 'swpsmtp_pass_encrypted'
wp option delete 'swpsmtp_enc_key'
wp option delete 'easy_wp_smtp_activated_time'
wp option delete 'easy_wp_smtp_test_email'
wp option delete 'easy_wp_smtp_activation_prevent_redirect'
wp option delete 'easy_wp_smtp_initial_version'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'easy_wp_smtp_connect_token'
wp option delete 'easy_wp_smtp_connect'
wp option delete 'mailer'
wp option delete 'easy_wp_smtp_version'
wp option delete 'easy_wp_smtp_activated'
wp option delete 'easy_wp_smtp_mail_key'
wp option delete 'easy_wp_smtp_summary_report_email_last_sent_week'
wp option delete 'active_sitewide_plugins'
wp option delete 'easy_wp_smtp'

# Delete Transients
wp transient delete 'easy_wp_smtp_lite_just_activated'
wp transient delete 'easy_wp_smtp_sd_code'
wp transient delete 'easy_wp_smtp_activation_redirect'
wp transient delete 'easy_wp_smtp_just_activated'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_wp_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_wp_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_wp_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_wp_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easy_wp_smtp_debug_events_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easy_wp_smtp_debug_events_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easy_wp_smtp_debug_events_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easy_wp_smtp_debug_events_per_page'"
