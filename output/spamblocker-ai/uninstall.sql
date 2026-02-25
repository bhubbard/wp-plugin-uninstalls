-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spamblocker_ai_comments_enabled', 'spamblocker_ai_fallback_count', 'spamblocker_ai_api_provider', 'spamblocker_ai_gemini_api_key', 'spamblocker_ai_openai_api_key', 'spamblocker_ai_gemini_model', 'spamblocker_ai_openai_model', 'spamblocker_ai_log_spam', 'spamblocker_ai_log_ip_user_agent', 'spamblocker_ai_error_message', 'spamblocker_ai_debug', 'spamblocker_ai_gemini_available_models', 'spamblocker_ai_openai_available_models', 'spamblocker_ai_fallback_notice_dismissed', 'spamblocker_ai_version', 'spamblocker_ai_api_error_message', 'spamblocker_ai_rate_limit_count', 'spamblocker_ai_gemini_models_full_data', 'spamblocker_ai_gemini_models_cache', 'spamblocker_ai_openai_models_cache');
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE 'spamblocker_ai_notice_%';
DELETE FROM wp_options WHERE option_name LIKE 'spamblocker_ai_error_form_%';

