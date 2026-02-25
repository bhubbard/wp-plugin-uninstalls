-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icl_sitepress_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hb_room_origin_capacity', 'hb_max_number_of_adults', '_hb_room_capacity', '_hb_room_extra');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hb_room_origin_capacity', 'hb_max_number_of_adults', '_hb_room_capacity', '_hb_room_extra');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hb_room_origin_capacity', 'hb_max_number_of_adults', '_hb_room_capacity', '_hb_room_extra');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hb_room_origin_capacity', 'hb_max_number_of_adults', '_hb_room_capacity', '_hb_room_extra');

