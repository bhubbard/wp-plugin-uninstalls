-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fiAdd_adsID', 'fiAdd_adsLeftID', 'fiAdd_adsRightID');

