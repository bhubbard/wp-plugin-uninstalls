-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ll_gmaps_settings', 'llgmaps_version', 'llgmaps_date_install', 'll_gmaps_version');

