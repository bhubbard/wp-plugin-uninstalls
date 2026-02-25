-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ya_wm_options', 'ya_wm_auth', 'ya_wm_object');

