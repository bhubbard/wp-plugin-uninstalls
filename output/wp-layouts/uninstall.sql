-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ags_layouts_hide_aiil_notice', 'ags_layouts_auth', 'sidebars_widgets', 'tribe_events_calendar_options');
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ags_layouts_auth', '_ags_layouts_job', '_ags_layouts_preview_key', '_ags_layouts_preview_name', '_ags_layouts_preview_editor', '_ags_layouts_preview_page', '_ags_layouts_widgets', '_ags_layouts_caldera_forms', '_ags_layouts_agsxto', '_ags_layouts_divi_module_presets', '_ags_layouts_config', 'ags-theme-demo-import-state', '_wp_attached_file', '_et_template', '_et_header_layout_id', '_et_body_layout_id', '_et_footer_layout_id', '_menu_item_menu_item_parent', '_thumbnail_id', '_fl_builder_draft', '_et_pb_show_page_creation', '_ags_layouts_temp_contents', '_et_pb_custom_css', '_et_pb_use_builder', '_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_ags_layouts_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ags_layouts_auth', '_ags_layouts_job', '_ags_layouts_preview_key', '_ags_layouts_preview_name', '_ags_layouts_preview_editor', '_ags_layouts_preview_page', '_ags_layouts_widgets', '_ags_layouts_caldera_forms', '_ags_layouts_agsxto', '_ags_layouts_divi_module_presets', '_ags_layouts_config', 'ags-theme-demo-import-state', '_wp_attached_file', '_et_template', '_et_header_layout_id', '_et_body_layout_id', '_et_footer_layout_id', '_menu_item_menu_item_parent', '_thumbnail_id', '_fl_builder_draft', '_et_pb_show_page_creation', '_ags_layouts_temp_contents', '_et_pb_custom_css', '_et_pb_use_builder', '_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_ags_layouts_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ags_layouts_auth', '_ags_layouts_job', '_ags_layouts_preview_key', '_ags_layouts_preview_name', '_ags_layouts_preview_editor', '_ags_layouts_preview_page', '_ags_layouts_widgets', '_ags_layouts_caldera_forms', '_ags_layouts_agsxto', '_ags_layouts_divi_module_presets', '_ags_layouts_config', 'ags-theme-demo-import-state', '_wp_attached_file', '_et_template', '_et_header_layout_id', '_et_body_layout_id', '_et_footer_layout_id', '_menu_item_menu_item_parent', '_thumbnail_id', '_fl_builder_draft', '_et_pb_show_page_creation', '_ags_layouts_temp_contents', '_et_pb_custom_css', '_et_pb_use_builder', '_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_ags_layouts_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ags_layouts_auth', '_ags_layouts_job', '_ags_layouts_preview_key', '_ags_layouts_preview_name', '_ags_layouts_preview_editor', '_ags_layouts_preview_page', '_ags_layouts_widgets', '_ags_layouts_caldera_forms', '_ags_layouts_agsxto', '_ags_layouts_divi_module_presets', '_ags_layouts_config', 'ags-theme-demo-import-state', '_wp_attached_file', '_et_template', '_et_header_layout_id', '_et_body_layout_id', '_et_footer_layout_id', '_menu_item_menu_item_parent', '_thumbnail_id', '_fl_builder_draft', '_et_pb_show_page_creation', '_ags_layouts_temp_contents', '_et_pb_custom_css', '_et_pb_use_builder', '_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_ags_layouts_content');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_layout_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_layout_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_layout_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_layout_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_layout_enabled';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_layout_enabled';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_layout_enabled';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_layout_enabled';

