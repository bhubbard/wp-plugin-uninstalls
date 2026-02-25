-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swptls_ai_provider', 'swptls_max_tokens', 'swptls_temperature', 'swptls_frequency_penalty', 'swptls_system_prompt', 'swptls_gemini_top_p', 'swptls_gemini_top_k', 'link_support_code_has_run', 'img_link_pro_support_has_run', 'theme_data_update', 'swptls_pagination_data_migrate', 'swptls_conditional_mode_migrate', 'link_support_mode', 'swptls_pro_appsero_fix_applied', 'swptls_pro_appsero_fix_declined', 'gswptsReviewNotice', 'gswptsAffiliateNotice', 'gswptsUpgradeNotice', 'deafaultNoticeInterval', 'deafaultAffiliateInterval', 'deafaultUpgradeInterval', 'asynchronous_loading', 'css_code_value', 'script_support_mode', 'timeout_values', 'cache_timestamp', 'swptls_openai_api_key', 'swptls_openai_model', 'swptls_gemini_api_key', 'swptls_gemini_model', 'swptls_cache_duration', 'swptls_ran_setup_wizard', 'swptls_cta_notice_dismissed', 'swptls_cta_notice_tabs_dismissed', 'show_get_start_page', 'swptls_pro_appsero_notice_shown', 'gswpts_activation_redirect', 'gswpts_first_time_install', 'gswptsActivationTime', 'gswptsManageTabs');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

