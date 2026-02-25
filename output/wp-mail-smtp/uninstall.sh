#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_mail_smtp_initial_version'
wp option delete 'wp_mail_smtp_activated_time'
wp option delete 'wpforms_installation_source'
wp option delete 'wp_mail_smtp_activation_prevent_redirect'
wp option delete 'wpforms_activation_redirect'
wp option delete 'aioseo_activation_redirect'
wp option delete 'wp_mail_smtp_connect_token'
wp option delete 'wp_mail_smtp_connect'
wp option delete 'mailer'
wp option delete 'wp_mail_smtp_version'
wp option delete 'wp_mail_smtp_activated'
wp option delete 'wp_mail_smtp_mail_key'
wp option delete 'swpsmtp_options'
wp option delete 'fluentmail-settings'
wp option delete 'postman_options'
wp option delete 'smtp_mailer_options'
wp option delete 'wp_smtp_options'
wp option delete 'wp_mail_smtp_summary_report_email_last_sent_week'
wp option delete 'wp_mail_smtp_source'
wp option delete 'active_sitewide_plugins'
wp option delete 'wp_mail_smtp'

# Delete Transients
wp transient delete 'wp_mail_smtp_activation_redirect'
wp transient delete '_rafflepress_welcome_screen_activation_redirect'
wp transient delete '_monsterinsights_activation_redirect'
wp transient delete '_seedprod_welcome_screen_activation_redirect'
wp transient delete 'wp_mail_smtp_just_activated'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mail_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mail_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mail_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mail_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mail_smtp_email_test_tab_removal_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mail_smtp_email_test_tab_removal_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mail_smtp_email_test_tab_removal_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mail_smtp_email_test_tab_removal_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mail_smtp_debug_events_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mail_smtp_debug_events_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mail_smtp_debug_events_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mail_smtp_debug_events_per_page'"
