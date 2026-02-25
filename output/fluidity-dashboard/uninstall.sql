-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fldtydash_icon_source');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_edit_last', 'admin_color', '_elementor_edit_mode', '_wpb_vc_js_status', 'beaver_builder_enabled', '_fl_builder_enabled', '_oxygen', '_cornerstone_data', '_et_pb_used', 'tve_page_builder_editor');
DELETE FROM wp_usermeta WHERE meta_key IN ('_edit_last', 'admin_color', '_elementor_edit_mode', '_wpb_vc_js_status', 'beaver_builder_enabled', '_fl_builder_enabled', '_oxygen', '_cornerstone_data', '_et_pb_used', 'tve_page_builder_editor');
DELETE FROM wp_termmeta WHERE meta_key IN ('_edit_last', 'admin_color', '_elementor_edit_mode', '_wpb_vc_js_status', 'beaver_builder_enabled', '_fl_builder_enabled', '_oxygen', '_cornerstone_data', '_et_pb_used', 'tve_page_builder_editor');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_edit_last', 'admin_color', '_elementor_edit_mode', '_wpb_vc_js_status', 'beaver_builder_enabled', '_fl_builder_enabled', '_oxygen', '_cornerstone_data', '_et_pb_used', 'tve_page_builder_editor');

