-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('webdoktoru_security_settings', 'webdoktoru_security_cache');

