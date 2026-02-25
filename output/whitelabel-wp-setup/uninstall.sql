-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_whitelabelled_plugins', 'site_whitelabelled_data');

