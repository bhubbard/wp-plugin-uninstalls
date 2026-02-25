-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hg_media_id', 'widget_archives', 'widget_search', 'widget_hotel_galaxy_service_widget', 'sidebars_widgets', 'hotelgalaxy_media_id', 'hg_details_page');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'hg_room_settings_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'hg_room_settings_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'hg_room_settings_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'hg_room_settings_%';

