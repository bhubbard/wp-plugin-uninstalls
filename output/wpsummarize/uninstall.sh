#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsummarize_site_key'
wp option delete 'wpsummarize_openai_api_key'
wp option delete 'wpsummarize_options'
wp option delete 'wpsummarize_rating_notice_dismissed'
wp option delete 'wpsummarize_rating_notice_delay_until'
wp option delete 'wpsummarize_activation_time'
wp option delete 'wpsummarize_usage_count'
wp option delete 'wpsummarize_rating_notice_dismiss_reason'
wp option delete 'wpsummarize_custom_css'
wp option delete 'wpsummarize_custom_html_before_heading'
wp option delete 'wpsummarize_custom_html_after_summary'
wp option delete 'wpsummarize_custom_prompt'
wp option delete 'wpsummarize_ai_api_provider'
wp option delete 'wpsummarize_last_quota_notice'
wp option delete 'wpsummarize_last_token_limit_notice'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'wpsummarize_quota_error'
wp transient delete 'wpsummarize_token_limit_reached'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'
wp cron event delete 'action_scheduler_run_queue'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsummarize_api_key_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsummarize_api_key_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsummarize_api_key_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsummarize_api_key_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsummarize_post_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsummarize_post_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsummarize_post_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsummarize_post_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsummarize_running_api'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsummarize_running_api'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsummarize_running_api'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsummarize_running_api'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsummarize_summary_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsummarize_summary_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsummarize_summary_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsummarize_summary_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsummarize_summary_set_manual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsummarize_summary_set_manual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsummarize_summary_set_manual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsummarize_summary_set_manual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsummarize_action_scheduled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsummarize_action_scheduled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsummarize_action_scheduled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsummarize_action_scheduled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ct_builder_json'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ct_builder_json'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ct_builder_json'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ct_builder_json'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mlp_original_blog'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mlp_original_blog'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mlp_original_blog'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mlp_original_blog'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mlp_original_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mlp_original_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mlp_original_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mlp_original_content'"
