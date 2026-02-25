-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('r404c_enabled', 'r404c_redirect_url', 'r404c_redirect_type');
DELETE FROM wp_options WHERE option_name LIKE 'r404c_%';

