#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'titan_plugin_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'titan_%'"
wp option delete 'titan_backup_store_data'
wp option delete 'titan_backup_status'
wp option delete 'titan_audit_hidden_items'
wp option delete 'titan_audit_results'
wp option delete 'titan_cache_tip_dismissed'
wp option delete 'titan_bruteforce_lockouts'
wp option delete 'titan_bruteforce_logged'
wp option delete 'titan_backup_store'
wp option delete 'titan_current_archive'
wp option delete 'titan_backup_total_files'
wp option delete 'titan_backup_file_list'
wp option delete 'titan_backup_list'
wp option delete 'titan_antispam_mode'
wp option delete 'titan_comment_form_privacy_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp option delete 'titan_advanced_spam_filter'
wp option delete 'titan_save_spam_comments'
wp option delete 'antispam_stats'
wp option delete 'titan_bruteforce_blacklist_ips'
wp option delete 'titan_bruteforce_blacklist_usernames'
wp option delete 'titan_bruteforce_gdpr'
wp option delete 'titan_bruteforce_retries_valid'
wp option delete 'titan_bruteforce_retries'
wp option delete 'titan_bruteforce_minutes_lockout'
wp option delete 'titan_bruteforce_whitelist_ips'
wp option delete 'titan_bruteforce_whitelist_usernames'
wp option delete 'titan_bruteforce_allowed_retries'
wp option delete 'titan_bruteforce_valid_duration'
wp option delete 'titan_bruteforce_lockouts_total'
wp option delete 'titan_bruteforce_set_default_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp option delete 'titan_bruteforce_enabled'
wp option delete 'titan_strong_password'
wp option delete 'titan_schedule_backup'
wp option delete 'titan_remove_old_data'
wp option delete 'titan_backup_files_per_iteration'
wp option delete 'titan_strong_password_min_role'
wp option delete 'titan_protect_author_get'
wp option delete 'titan_remove_x_pingback'
wp option delete 'titan_remove_html_comments'
wp option delete 'titan_remove_meta_generator'
wp option delete 'titan_remove_js_version'
wp option delete 'titan_remove_style_version'
wp option delete 'titan_complete_uninstall'
wp option delete 'titan_strict_https'
wp option delete 'titan_setup_wizard'
wp option delete 'titan_remove_version_exclude'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks'"
wp option delete 'themeisle_sdk_notifications'
wp option delete 'otter_reference_key'
wp option delete 'optimole_reference_key'
wp option delete 'rop_reference_key'
wp option delete 'neve_reference_key'
wp option delete 'hyve_reference_key'
wp option delete 'wp_full_pay_reference_key'
wp option delete 'feedzy_reference_key'
wp option delete 'themeisle_sdk_promotions_otter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp transient delete 'titan_spam_actions_scheduled'
wp transient delete 'wtitan_premium_version_incompatible'
wp transient delete 'titan_audit_results'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'wantispam_stats_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themeisle_sdk_cache_token'
wp transient delete 'themeisle_sdk_feed_items'
wp transient delete 'themeisle_sdk_products'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%act_err' OR option_name LIKE '_site_transient_%act_err'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"
wp transient delete 'tsk_attachment_count'
wp transient delete 'tsk_posts_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_theme_info_%' OR option_name LIKE '_site_transient_ti_theme_info_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_sdk_pause_%' OR option_name LIKE '_site_transient_ti_sdk_pause_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'wbcr_bm_backup_time'
wp cron event delete 'wbcr_bm_remove_old_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_titan_spam_filtered'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_titan_spam_filtered'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_titan_spam_filtered'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_titan_spam_filtered'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_titan_spam_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_titan_spam_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_titan_spam_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_titan_spam_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_titan_spam_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_titan_spam_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_titan_spam_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_titan_spam_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'titan_password_change_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'titan_password_change_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'titan_password_change_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'titan_password_change_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'titan_last_password_change'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'titan_last_password_change'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'titan_last_password_change'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'titan_last_password_change'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'titan-password-updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'titan-password-updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'titan-password-updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'titan-password-updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
