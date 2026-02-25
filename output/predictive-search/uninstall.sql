-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpps_search_page_content_type', 'wp_predictive_search_just_confirm', 'wpps_search_schedule_time_sync_data', 'wp_predictive_search_had_sync_posts_data', 'wp_predictive_search_synced_posts_data', 'wp_predictive_search_auto_synced_completed_time', 'wp_predictive_search_manual_synced_completed_time', 'wp_predictive_search_auto_synced_relationships_successed', 'wpps_min_characters_message_dontshow', 'wpps_time_delay_message_dontshow', 'wpps_cache_timeout_message_dontshow', 'predictive_search_category_cache', 'wpps_search_box_text', 'wpps_search_lite_clean_on_deletion', 'wp_predictive_search_version', 'wp_predictive_search_just_installed', 'wpps_search_widget_template', 'wpps_search_show_catdropdown', 'wpps_search_in_taxonomy', 'wpps_search_show_image', 'wpps_search_show_desc', 'wpps_search_character_max', 'wpps_search_show_in_cat', 'wpps_blocks_unavailable_dismiss', 'wpps_search_is_debug', 'wpps_search_min_characters', 'wpps_search_delay_time', 'wpps_search_cache_timeout', 'wpps_search_focus_enable', 'wpps_search_focus_plugin', 'wpps_all_results_pages_settings', 'predictive_search_rebuild_cat_cache', 'wpps_search_category_cache_timeout', 'wpps_search_page_id', 'predictive_search_mode', 'predictive_search_description_source', 'wpps_search_remove_special_character', 'wpps_search_special_characters', 'wpps_search_replace_special_character', 'wpps_search_enable_google_analytic', 'wpps_search_google_analytic_id', 'wpps_search_google_analytic_query_parameter', 'wpps_search_allow_auto_sync_data', 'wp_predictive_search_auto_synced_full_data_successed', 'wp_predictive_search_auto_synced_posts_successed', 'wp_predictive_search_current_post_type_is_syncing', 'wp_predictive_search_auto_synced_custom_types_successed', 'wp_predictive_search_auto_synced_taxonomy_successed', 'wpps_search_schedule_success_recipients', 'wpps_search_schedule_error_recipients');
DELETE FROM wp_options WHERE option_name IN ('wpps_upgraded_to_new_sync_data', 'wp_predictive_search_lite_version', 'wp_predictive_search_sidebar_template_settings', 'wp_predictive_search_header_template_settings', 'update_plugins', 'wp_predictive_search_starting_manual_sync');
DELETE FROM wp_options WHERE option_name LIKE '%_clean_on_deletion';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%_google_font_list';
DELETE FROM wp_options WHERE option_name LIKE '%_style_version';
DELETE FROM wp_options WHERE option_name LIKE 'wpps_search_exclude_%';
DELETE FROM wp_options WHERE option_name LIKE '%_successed';
DELETE FROM wp_options WHERE option_name LIKE '%_items';
DELETE FROM wp_options WHERE option_name LIKE 'predictive_search_have_cat_cache%';
DELETE FROM wp_options WHERE option_name LIKE '%_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id', '_yoast_wpseo_focuskw', '_aioseop_keywords');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id', '_yoast_wpseo_focuskw', '_aioseop_keywords');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id', '_yoast_wpseo_focuskw', '_aioseop_keywords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id', '_yoast_wpseo_focuskw', '_aioseop_keywords');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%opened';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-custom-boxes';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-custom-boxes';

