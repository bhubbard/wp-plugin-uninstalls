-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wparnold_site_id');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

