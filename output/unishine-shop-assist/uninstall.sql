-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_ai_chatbot_api_url', 'wp_ai_chatbot_api_key', 'wp_ai_chatbot_title', 'wp_ai_chatbot_position', 'wp_ai_chatbot_theme', 'unishine_shop_assist_api_url', 'unishine_shop_assist_api_key', 'unishine_shop_assist_title', 'unishine_shop_assist_position', 'unishine_shop_assist_theme');

