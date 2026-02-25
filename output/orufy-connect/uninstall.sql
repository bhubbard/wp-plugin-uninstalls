-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orufy_connect_appid', 'orufy_connect_whatsapp_api_key', 'orufy_connect_whatsapp_api_secret', 'orufy_whatsapp_api_response', 'orufy_template_status_selections');

