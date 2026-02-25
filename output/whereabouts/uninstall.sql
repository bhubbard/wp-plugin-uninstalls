-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whab_settings', 'whab_location_data');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('whab_location_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('whab_location_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('whab_location_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('whab_location_data');

