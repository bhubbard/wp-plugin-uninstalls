-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adosui_slug_options_settings', 'adosui_submit_advert_options_settings', 'adosui_display_advert_options_settings', 'adosui_search_advert_options_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_expiration_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_expiration_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_expiration_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_expiration_date');

