-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('travelermap_version', 'traverlermap_settings', 'travelermap_settings', 'travelermap_db_version');

