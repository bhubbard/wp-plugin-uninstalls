-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('colibri_page_builder_activation_time', 'colibri-show-tour', 'colibriwp_predesign_front_page_meta', 'colibriwp_predesign_front_page_index', 'colibriwp_activate_theme_name', 'colibri_contact_form_sections_spacing_activation_logic_ran_flag', 'colibri_contact_form_sections_spacing_add_fix', 'colibri_page_builder_demo_sites', 'colibri_sync_data_source', 'colibri_page_builder_pro_activation_time', 'colibriwp_builder_license_key', 'colibri_instance_data', 'cp_initialize_notifications', 'sidebars_widgets', 'colibri_manual_create_pages', 'colibriwp_fix_wp58_sidebar', 'widget_block', 'colibriwp_used_svg_icons', 'update_plugins', 'update_themes', 'colibri_page_builder_cache', 'colibri_wp_recommendation_hide_notice', 'colibri_wpmu_forminator_hide_notice', 'colibri_demo_import_data', 'colibriwp_page_builder_check_license', 'colibriwp_page_builder_check_license_duration', 'ocdi_importer_data', 'wc_attribute_taxonomies', 'pt_importer_data');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_show_on_front';
DELETE FROM wp_options WHERE option_name LIKE '%_companion_old_page_on_front';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'extend_builder', '_wp_attachment_image_alt', '_wp_attachment_context', 'extb_json_revision_id', '_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'extend_builder', '_wp_attachment_image_alt', '_wp_attachment_context', 'extb_json_revision_id', '_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'extend_builder', '_wp_attachment_image_alt', '_wp_attachment_context', 'extb_json_revision_id', '_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'extend_builder', '_wp_attachment_image_alt', '_wp_attachment_context', 'extb_json_revision_id', '_wp_attachment_is_custom_header', '_menu_item_type', '_menu_item_object_id', '_wxr_import_menu_item', '_wxr_import_parent', '_wxr_import_user_slug', '_wxr_import_has_attachment_refs', '_wxr_import_user', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_front_page';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-show-default-editor';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-show-default-editor';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-show-default-editor';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-show-default-editor';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_maintainable_page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_maintainable_page';

