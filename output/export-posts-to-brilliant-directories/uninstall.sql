-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('brildir_expopo_author_id', 'brildir_expopo_sync_option', 'brildir_expopo_min_time_published', 'brildir_expopo_cron_schedule', 'brildir_expopo_wp_post_status', 'brildir_expopo_post_redirect', 'brildir_expopo_pass_publish_date', 'brildir_expopo_pass_feature_image', 'brildir_expopo_pass_post_tags', 'brildir_expopo_pass_seo_meta_data', 'brildir_expopo_pass_slug', 'brildir_expopo_pass_post_category', 'brildir_expopo_selected_categories', 'brildir_expopo_api_key', 'brildir_expopo_api_url', 'brildir_expopo_post_type', 'brildir_expopo_bd_post_status', 'brildir_expopo_cron_offset', 'brildir_expopo_last_sync_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('brildir_expopo_post_new_url', 'brildir_expopo_redirect_enabled', 'brildir_expopo_created_post_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseo_keywords', 'brildir_expopo_post_update_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('brildir_expopo_post_new_url', 'brildir_expopo_redirect_enabled', 'brildir_expopo_created_post_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseo_keywords', 'brildir_expopo_post_update_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('brildir_expopo_post_new_url', 'brildir_expopo_redirect_enabled', 'brildir_expopo_created_post_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseo_keywords', 'brildir_expopo_post_update_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('brildir_expopo_post_new_url', 'brildir_expopo_redirect_enabled', 'brildir_expopo_created_post_id', '_yoast_wpseo_title', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', 'rank_math_title', 'rank_math_description', 'rank_math_focus_keyword', '_aioseo_keywords', 'brildir_expopo_post_update_date');

