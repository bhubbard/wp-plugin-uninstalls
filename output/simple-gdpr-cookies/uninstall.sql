-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_gdpr_cookies_content_settings', 'simple_gdpr_cookies_modal_settings', 'simple_gdpr_cookies_cookie_settings');

