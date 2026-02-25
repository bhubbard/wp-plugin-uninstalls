-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('linkboss_api_key', 'linkboss_access_token', 'linkboss_custom_query', 'linkboss_acf_enabled', 'default_product_cat', 'lbw_cron_notice_dismissed', 'linkboss_sync_speed', 'linkboss_woo_enabled', 'linkboss_sync_batch', 'linkboss_installed', 'linkboss_version', 'linkboss_setup_wizard', 'linkboss_sync_ongoing', 'linkboss_sync_batch_table_error');
DELETE FROM wp_options WHERE option_name LIKE '%_installed';
DELETE FROM wp_options WHERE option_name LIKE 'dismissed_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tcb_editor_enabled', 'tve_landing_page', '_elementor_edit_mode', '_elementor_data', '_et_pb_use_builder', '_bricks_page_content_2', 'ct_builder_json', '_ct_builder_json', '_fl_builder_enabled', '_fl_builder_data', '_fl_builder_draft');
DELETE FROM wp_usermeta WHERE meta_key IN ('tcb_editor_enabled', 'tve_landing_page', '_elementor_edit_mode', '_elementor_data', '_et_pb_use_builder', '_bricks_page_content_2', 'ct_builder_json', '_ct_builder_json', '_fl_builder_enabled', '_fl_builder_data', '_fl_builder_draft');
DELETE FROM wp_termmeta WHERE meta_key IN ('tcb_editor_enabled', 'tve_landing_page', '_elementor_edit_mode', '_elementor_data', '_et_pb_use_builder', '_bricks_page_content_2', 'ct_builder_json', '_ct_builder_json', '_fl_builder_enabled', '_fl_builder_data', '_fl_builder_draft');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tcb_editor_enabled', 'tve_landing_page', '_elementor_edit_mode', '_elementor_data', '_et_pb_use_builder', '_bricks_page_content_2', 'ct_builder_json', '_ct_builder_json', '_fl_builder_enabled', '_fl_builder_data', '_fl_builder_draft');

