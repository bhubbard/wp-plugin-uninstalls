-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ihfc_photo_url', '_ihfc_wpml_is_original', '_ihfc_wpml_original_post_id', '_ihfc_hotel_id', '_ihfc_date_add', '_ihfc_tpl_post_id', '_ihfc_hotel', '_ihfc_date_modification', '_ihfc_hotel_name', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ihfc_photo_url', '_ihfc_wpml_is_original', '_ihfc_wpml_original_post_id', '_ihfc_hotel_id', '_ihfc_date_add', '_ihfc_tpl_post_id', '_ihfc_hotel', '_ihfc_date_modification', '_ihfc_hotel_name', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ihfc_photo_url', '_ihfc_wpml_is_original', '_ihfc_wpml_original_post_id', '_ihfc_hotel_id', '_ihfc_date_add', '_ihfc_tpl_post_id', '_ihfc_hotel', '_ihfc_date_modification', '_ihfc_hotel_name', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ihfc_photo_url', '_ihfc_wpml_is_original', '_ihfc_wpml_original_post_id', '_ihfc_hotel_id', '_ihfc_date_add', '_ihfc_tpl_post_id', '_ihfc_hotel', '_ihfc_date_modification', '_ihfc_hotel_name', '_thumbnail_id');

