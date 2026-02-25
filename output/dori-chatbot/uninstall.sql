-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rocket_exclude_js', 'rocket_exclude_defer_js', 'rocket_delay_js_exclusions', 'autoptimize_js_exclude', 'litespeed.conf.optm-js_excludes', 'litespeed.conf.optm-js_defer_excludes', 'wpo_minify_js_excludes', 'wpo_minify_js_noptimize', 'dori-chatbot-onboarding-completed', 'dori-chatbot-integrate', 'dori-chatbot-sharing-id', 'dori-chatbot-client-id', 'dori-chatbot-temp-user-id', 'dori-chatbot-user-phone', 'dori-chatbot-client-secret', 'dori-chatbot-wc-consumer-key', 'dori-chatbot-wc-consumer-secret', 'dori-chatbot-version', 'dori_chatbot_auto_update', 'dori_chatbot_last_update', 'dori_chatbot_update_error', 'dori_chatbot_last_update_check', 'dori-chatbot-extract-response-data', 'dori-chatbot-bot-creation-retries', 'dori-chatbot-bot-creation-status', 'dori_chatbot_product_count', 'dori-chatbot-bot-creation-error', 'dori_chatbot_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dori_thread_id', 'dori_current_thread_id', 'dori_session_key');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dori_thread_id', 'dori_current_thread_id', 'dori_session_key');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dori_thread_id', 'dori_current_thread_id', 'dori_session_key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dori_thread_id', 'dori_current_thread_id', 'dori_session_key');

