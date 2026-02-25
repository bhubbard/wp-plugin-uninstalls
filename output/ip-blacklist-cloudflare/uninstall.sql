-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfip_settings', 'cfip_log', 'cfip_banned_addresses', 'cloudflare_api_email', 'cloudflare_api_key', 'cfip_activated_on');

