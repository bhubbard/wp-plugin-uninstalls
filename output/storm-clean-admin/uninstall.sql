-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('storm_clean_admin_version', 'storm_clean_admin_activated', 'storm_clean_admin_generals_options');

