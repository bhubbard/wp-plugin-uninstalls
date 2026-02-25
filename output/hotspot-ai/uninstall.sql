-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auth_signin_token', 'chatgptModel', 'hotspot-switch', 'ai_select', 'custom_proxy', 'openai_key', 'roleInstruction', 'seo-analysis', 'search-images', 'hotspot_ai_do_activation_redirect', 'classic-editor-replace', 'baijiahao_hotspot_cookies', 'classic_editor_support_switch', 'hotspot_last_checked_time');

