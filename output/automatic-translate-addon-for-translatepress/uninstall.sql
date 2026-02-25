-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tpa_feedback_opt_in', 'tpa-install-date', 'tpa_initial_save_version', 'cpt_dashboard_data', 'cpt_review_notice_dismissed', 'tpa_provider_yandex_enabled', 'tpa_provider_chrome_enabled', 'cpfm_opt_in_choice_cool_translations', 'trp_settings', 'tpa_chrome_ai_bypass_api_check', 'tpa_chrome_ai_bypass_secure_check', 'tpa_chrome_ai_bypass_browser_check', 'tpa_do_activation_redirect', 'tpa-v', 'tpa-type', 'tpa-installDate', 'tpa-ratingDiv', 'tpa_chrome_ai_bypass_security_check');

