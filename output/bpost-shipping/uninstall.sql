-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ET_CORE_VERSION');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

