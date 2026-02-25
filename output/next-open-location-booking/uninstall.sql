-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('next_open_google_maps_api', 'next_open_layout_type', 'next_open_initial_slots', 'next_open_email_from_name', 'next_open_email_from_address', 'next_open_categories', 'next_open_version', 'next_open_settings', 'next_open_delete_on_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_next_open_address', '_next_open_latitude', '_next_open_longitude', '_next_open_phone', '_next_open_website', '_next_open_interval');
DELETE FROM wp_usermeta WHERE meta_key IN ('_next_open_address', '_next_open_latitude', '_next_open_longitude', '_next_open_phone', '_next_open_website', '_next_open_interval');
DELETE FROM wp_termmeta WHERE meta_key IN ('_next_open_address', '_next_open_latitude', '_next_open_longitude', '_next_open_phone', '_next_open_website', '_next_open_interval');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_next_open_address', '_next_open_latitude', '_next_open_longitude', '_next_open_phone', '_next_open_website', '_next_open_interval');

