-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ghetto_slide_width', 'ghetto_slide_height');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('destination_url', 'ghetto_caption');
DELETE FROM wp_usermeta WHERE meta_key IN ('destination_url', 'ghetto_caption');
DELETE FROM wp_termmeta WHERE meta_key IN ('destination_url', 'ghetto_caption');
DELETE FROM wp_commentmeta WHERE meta_key IN ('destination_url', 'ghetto_caption');

