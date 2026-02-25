-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_umy_wdw_templates', 'umy_wdw_hide_from_subsites', 'umy_wdw_version', 'umy_wdw_settings_saved');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_bricks_page_content_2', '_et_pb_use_builder', '_fl_builder_enabled', 'ct_builder_shortcodes', '_breakdance_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_bricks_page_content_2', '_et_pb_use_builder', '_fl_builder_enabled', 'ct_builder_shortcodes', '_breakdance_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_bricks_page_content_2', '_et_pb_use_builder', '_fl_builder_enabled', 'ct_builder_shortcodes', '_breakdance_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_bricks_page_content_2', '_et_pb_use_builder', '_fl_builder_enabled', 'ct_builder_shortcodes', '_breakdance_data');

