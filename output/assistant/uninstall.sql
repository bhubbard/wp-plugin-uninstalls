-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fl_assistant_export_file', 'astra-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_fl_asst_preview_library_item_id', '_thumbnail_id', '_fl_asst_code', '_fl_asst_code_type', '_fl_asst_code_locations', '_fl_builder_enabled', 'fl_asst_notation_label_id', '_wp_page_template', '_wp_trash_meta_status', '_fl_asst_enable', 'first_name', 'last_name', 'nickname', '_fl_asst_imported_media_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_fl_asst_preview_library_item_id', '_thumbnail_id', '_fl_asst_code', '_fl_asst_code_type', '_fl_asst_code_locations', '_fl_builder_enabled', 'fl_asst_notation_label_id', '_wp_page_template', '_wp_trash_meta_status', '_fl_asst_enable', 'first_name', 'last_name', 'nickname', '_fl_asst_imported_media_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_fl_asst_preview_library_item_id', '_thumbnail_id', '_fl_asst_code', '_fl_asst_code_type', '_fl_asst_code_locations', '_fl_builder_enabled', 'fl_asst_notation_label_id', '_wp_page_template', '_wp_trash_meta_status', '_fl_asst_enable', 'first_name', 'last_name', 'nickname', '_fl_asst_imported_media_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_fl_asst_preview_library_item_id', '_thumbnail_id', '_fl_asst_code', '_fl_asst_code_type', '_fl_asst_code_locations', '_fl_builder_enabled', 'fl_asst_notation_label_id', '_wp_page_template', '_wp_trash_meta_status', '_fl_asst_enable', 'first_name', 'last_name', 'nickname', '_fl_asst_imported_media_hash');

