-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_botkit_chatbot_sitewide_enabled', 'ai_botkit_post_sync_settings', 'ai_botkit_saas_connect_token', 'ai_botkit_banned_keywords', 'ai_botkit_blocked_ips', 'ai_botkit_chatbot_enabled_pages', 'ai_botkit_setup_completed', 'ai_botkit_version', 'ai_botkit_onboarding_nonce', '_ai_botkit_activation_redirect');

