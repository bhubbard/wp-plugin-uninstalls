-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('frbl_activation_redirect', 'frontblocks_settings', 'frontblocks-pro_license_apikey', 'frontblocks-pro_license_deactivate_checkbox', 'generate_settings', 'frontblocks-pro_license_activated', 'generate_dynamic_css_output');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('all_day', 'start_date', 'start_time', 'end_date', 'end_time', 'cost', 'web', 'poster_evento', 'direccion_evento', 'thumbnail_id', 'reading_time', 'frontblocks_stars');
DELETE FROM wp_usermeta WHERE meta_key IN ('all_day', 'start_date', 'start_time', 'end_date', 'end_time', 'cost', 'web', 'poster_evento', 'direccion_evento', 'thumbnail_id', 'reading_time', 'frontblocks_stars');
DELETE FROM wp_termmeta WHERE meta_key IN ('all_day', 'start_date', 'start_time', 'end_date', 'end_time', 'cost', 'web', 'poster_evento', 'direccion_evento', 'thumbnail_id', 'reading_time', 'frontblocks_stars');
DELETE FROM wp_commentmeta WHERE meta_key IN ('all_day', 'start_date', 'start_time', 'end_date', 'end_time', 'cost', 'web', 'poster_evento', 'direccion_evento', 'thumbnail_id', 'reading_time', 'frontblocks_stars');

