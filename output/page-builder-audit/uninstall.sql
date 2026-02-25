-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_wpb_vc_js_status', '_wpb_shortcodes_custom_css', '_et_pb_use_builder', '_fl_builder_enabled', 'brizy_post_uid', 'ct_builder_shortcodes', 'tve_updated_post', '_seedprod_page', '_bricks_page_content_2', '_starter_data', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_wpb_vc_js_status', '_wpb_shortcodes_custom_css', '_et_pb_use_builder', '_fl_builder_enabled', 'brizy_post_uid', 'ct_builder_shortcodes', 'tve_updated_post', '_seedprod_page', '_bricks_page_content_2', '_starter_data', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_wpb_vc_js_status', '_wpb_shortcodes_custom_css', '_et_pb_use_builder', '_fl_builder_enabled', 'brizy_post_uid', 'ct_builder_shortcodes', 'tve_updated_post', '_seedprod_page', '_bricks_page_content_2', '_starter_data', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_wpb_vc_js_status', '_wpb_shortcodes_custom_css', '_et_pb_use_builder', '_fl_builder_enabled', 'brizy_post_uid', 'ct_builder_shortcodes', 'tve_updated_post', '_seedprod_page', '_bricks_page_content_2', '_starter_data', '_wp_page_template');

