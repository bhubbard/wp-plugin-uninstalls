-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('heichat_login', 'heichat_js_url', 'heichat_integrate');

