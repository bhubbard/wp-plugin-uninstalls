-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wh_api_token', 'wh_api_secret', 'wh_screenshot_ttl', 'wh_screenshot_delay');

