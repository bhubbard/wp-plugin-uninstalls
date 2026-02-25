-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ssp_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

