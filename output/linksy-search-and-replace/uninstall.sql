-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linksy_link_analysis_cron_enabled', 'linksy_link_analysis_offset', 'active_sitewide_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aviaLayoutBuilder_active', '_fl_builder_enabled', '_fl_builder_data', '_fl_builder_draft', '_bricks_editor_mode', '_elementor_edit_mode', 'tve_content_before_more', 'tcb_editor_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aviaLayoutBuilder_active', '_fl_builder_enabled', '_fl_builder_data', '_fl_builder_draft', '_bricks_editor_mode', '_elementor_edit_mode', 'tve_content_before_more', 'tcb_editor_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aviaLayoutBuilder_active', '_fl_builder_enabled', '_fl_builder_data', '_fl_builder_draft', '_bricks_editor_mode', '_elementor_edit_mode', 'tve_content_before_more', 'tcb_editor_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aviaLayoutBuilder_active', '_fl_builder_enabled', '_fl_builder_data', '_fl_builder_draft', '_bricks_editor_mode', '_elementor_edit_mode', 'tve_content_before_more', 'tcb_editor_enabled');

