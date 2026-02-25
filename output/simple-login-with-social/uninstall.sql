-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fb_api_id', 'fb_app_secret', 'fb_login_page');

