-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('steves_gallery_helper_license_key', 'steves_gallery_helper_license_status');

