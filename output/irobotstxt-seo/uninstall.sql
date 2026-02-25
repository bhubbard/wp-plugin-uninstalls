-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('irseo_options', 'irseo_version');
DELETE FROM wp_options WHERE option_name LIKE 'irseo_%';

