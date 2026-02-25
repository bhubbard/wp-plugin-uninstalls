#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'swptls_ai_provider'
wp option delete 'swptls_max_tokens'
wp option delete 'swptls_temperature'
wp option delete 'swptls_frequency_penalty'
wp option delete 'swptls_system_prompt'
wp option delete 'swptls_gemini_top_p'
wp option delete 'swptls_gemini_top_k'
wp option delete 'link_support_code_has_run'
wp option delete 'img_link_pro_support_has_run'
wp option delete 'theme_data_update'
wp option delete 'swptls_pagination_data_migrate'
wp option delete 'swptls_conditional_mode_migrate'
wp option delete 'link_support_mode'
wp option delete 'swptls_pro_appsero_fix_applied'
wp option delete 'swptls_pro_appsero_fix_declined'
wp option delete 'gswptsReviewNotice'
wp option delete 'gswptsAffiliateNotice'
wp option delete 'gswptsUpgradeNotice'
wp option delete 'deafaultNoticeInterval'
wp option delete 'deafaultAffiliateInterval'
wp option delete 'deafaultUpgradeInterval'
wp option delete 'asynchronous_loading'
wp option delete 'css_code_value'
wp option delete 'script_support_mode'
wp option delete 'timeout_values'
wp option delete 'cache_timestamp'
wp option delete 'swptls_openai_api_key'
wp option delete 'swptls_openai_model'
wp option delete 'swptls_gemini_api_key'
wp option delete 'swptls_gemini_model'
wp option delete 'swptls_cache_duration'
wp option delete 'swptls_ran_setup_wizard'
wp option delete 'swptls_cta_notice_dismissed'
wp option delete 'swptls_cta_notice_tabs_dismissed'
wp option delete 'show_get_start_page'
wp option delete 'swptls_pro_appsero_notice_shown'
wp option delete 'gswpts_activation_redirect'
wp option delete 'gswpts_first_time_install'
wp option delete 'gswptsActivationTime'
wp option delete 'gswptsManageTabs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

