-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgc_options', 'pgc_settings', 'active_sitewide_plugins', 'pgc_scanprogress_current', 'pgc_scanprogress_status');

