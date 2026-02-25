-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'whdi_recent_import_log_file', 'whdi_import_data', '_whdi_old_customizer_data', '_whdi_old_site_options', '_whdi_old_widgets_data', 'whdi-settings', 'whdi_sites_wpforms_ids_mapping', 'whdi_sites_recent_import_log_file', 'sidebars_widgets', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'whdi_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_whdi_sites_imported_wp_forms', '_elementor_version', '_whdi_sites_hotlink_imported', '_elementor_data', '_whdi_sites_imported_post', '_whdi_sites_imported_term', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_whdi_sites_imported_wp_forms', '_elementor_version', '_whdi_sites_hotlink_imported', '_elementor_data', '_whdi_sites_imported_post', '_whdi_sites_imported_term', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_whdi_sites_imported_wp_forms', '_elementor_version', '_whdi_sites_hotlink_imported', '_elementor_data', '_whdi_sites_imported_post', '_whdi_sites_imported_term', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_whdi_sites_imported_wp_forms', '_elementor_version', '_whdi_sites_hotlink_imported', '_elementor_data', '_whdi_sites_imported_post', '_whdi_sites_imported_term', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');

