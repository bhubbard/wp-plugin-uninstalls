-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('madeep_username', 'madeep_password', 'madeep_debug_mode', 'madeep_debug_quantity', 'madeep_default_language', 'madeep_enable_write', 'madeep_download_gallery', 'madeep_data_type', 'madeep_time_last_update_hotels', 'madeep_time_last_update_ecom', 'madeep_time_last_update_offers', 'madeep_time_last_update_services', 'madeep_active_languages', 'madeep_active_multilanguages', 'madeep_template_hotels', 'madeep_template_ecoms', 'madeep_template_services', 'madeep_template_offers', 'madeep_allow_structure_tag', 'madeep_allow_filters_tag', 'madeep_allow_lang_tag', 'madeep_allow_single_sync', 'madeep_category_hotels', 'madeep_category_ecoms', 'madeep_category_services', 'madeep_category_offers', 'madeep_google_api_key', 'madeep_post_template_css', 'madeep_post_template_js', 'madeep_write_hotels_page', 'madeep_write_ecoms_page', 'madeep_write_services_page', 'madeep_write_offers_page', 'madeep_time_last_update_hotels_pages', 'madeep_time_last_update_hotels_list', 'madeep_time_last_update_ecoms', 'madeep_time_last_update_ecoms_pages', 'madeep_time_last_update_ecoms_list', 'madeep_time_last_update_services_pages', 'madeep_time_last_update_services_list', 'madeep_time_last_update_offers_pages', 'madeep_time_last_update_offers_list', 'madeep_sync_key', 'madeep_write_hotel_page', 'madeep_time_last_update_hotels_page', 'madeep_time_last_update_ecom_list');
DELETE FROM wp_options WHERE option_name LIKE 'madeep_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'madeep_category_%';
DELETE FROM wp_options WHERE option_name LIKE '%_page';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('madeep_galleryIDs', 'madeep_featuredImageID', 'madeep_tags', 'madeep_type', 'madeep_id_element', 'madeep_id_container');
DELETE FROM wp_usermeta WHERE meta_key IN ('madeep_galleryIDs', 'madeep_featuredImageID', 'madeep_tags', 'madeep_type', 'madeep_id_element', 'madeep_id_container');
DELETE FROM wp_termmeta WHERE meta_key IN ('madeep_galleryIDs', 'madeep_featuredImageID', 'madeep_tags', 'madeep_type', 'madeep_id_element', 'madeep_id_container');
DELETE FROM wp_commentmeta WHERE meta_key IN ('madeep_galleryIDs', 'madeep_featuredImageID', 'madeep_tags', 'madeep_type', 'madeep_id_element', 'madeep_id_container');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'madeep_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'madeep_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'madeep_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'madeep_%';

