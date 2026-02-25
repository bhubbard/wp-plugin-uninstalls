-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ainews_language', 'ainews_post_status', 'ainews_schedule_interval', 'ainews_article_count', 'ainews_selected_topics', 'ainews_prompt_type', 'ainews_prompt_language', 'ainews_custom_interval', 'ainews_auto_enabled', 'ainews_schedule_paused', 'ainews_auto_generated_count', 'ainews_api_key', 'ainews_keep_data_on_uninstall', 'ainews_post_category', 'ainews_last_auto_run', 'ainews_last_auto_interval', 'ainews_custom_prompt', 'ainews_auto_featured_image', 'ainews_image_generation_service', 'ainews_openai_api_key', 'ainews_siliconflow_api_key', 'ainews_deepseek_api_key', 'ainews_image_dimensions', 'ainews_image_style', 'ainews_unsplash_access_key', 'ainews_pixabay_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ainews_generated', '_ainews_language', '_ainews_featured_image_generated', '_ainews_featured_image_service');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ainews_generated', '_ainews_language', '_ainews_featured_image_generated', '_ainews_featured_image_service');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ainews_generated', '_ainews_language', '_ainews_featured_image_generated', '_ainews_featured_image_service');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ainews_generated', '_ainews_language', '_ainews_featured_image_generated', '_ainews_featured_image_service');

