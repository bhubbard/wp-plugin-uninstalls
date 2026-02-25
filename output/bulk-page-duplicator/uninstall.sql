-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpd_batch_history');
DELETE FROM wp_options WHERE option_name LIKE 'bpd_current_session_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bpd_preferences', '_elementor_data', '_elementor_edit_mode', '_elementor_css', '_fl_builder_data', '_fl_builder_draft', '_bricks_page_content_2', '_bricks_page_content', '_bricks_page_assets_css', '_bricks_page_assets_js');
DELETE FROM wp_usermeta WHERE meta_key IN ('bpd_preferences', '_elementor_data', '_elementor_edit_mode', '_elementor_css', '_fl_builder_data', '_fl_builder_draft', '_bricks_page_content_2', '_bricks_page_content', '_bricks_page_assets_css', '_bricks_page_assets_js');
DELETE FROM wp_termmeta WHERE meta_key IN ('bpd_preferences', '_elementor_data', '_elementor_edit_mode', '_elementor_css', '_fl_builder_data', '_fl_builder_draft', '_bricks_page_content_2', '_bricks_page_content', '_bricks_page_assets_css', '_bricks_page_assets_js');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bpd_preferences', '_elementor_data', '_elementor_edit_mode', '_elementor_css', '_fl_builder_data', '_fl_builder_draft', '_bricks_page_content_2', '_bricks_page_content', '_bricks_page_assets_css', '_bricks_page_assets_js');

