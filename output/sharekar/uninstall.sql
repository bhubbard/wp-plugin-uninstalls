-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sharekar_webshare', 'sharekar_version', 'sharekar_settings', 'sharekar_float', 'sharekar_conf');

