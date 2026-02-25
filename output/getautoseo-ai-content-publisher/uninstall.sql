-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoseo_api_key', 'autoseo_post_category', 'autoseo_author_id', 'autoseo_debug_mode', 'autoseo_pending_auto_verification', 'autoseo_db_version', 'autoseo_show_setup_wizard', 'autoseo_api_key_set_time', 'autoseo_auto_verified_at', 'autoseo_auto_publish', 'autoseo_last_sync_time', 'autoseo_notification_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_autoseo_article_id', '_autoseo_infographic_image_id', '_autoseo_content_markdown', '_autoseo_meta_description', '_autoseo_keywords', '_autoseo_hero_image_url', '_autoseo_infographic_image_url', '_autoseo_infographic_html', '_autoseo_wordpress_tags', '_autoseo_meta_keywords', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_autoseo_managed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_autoseo_article_id', '_autoseo_infographic_image_id', '_autoseo_content_markdown', '_autoseo_meta_description', '_autoseo_keywords', '_autoseo_hero_image_url', '_autoseo_infographic_image_url', '_autoseo_infographic_html', '_autoseo_wordpress_tags', '_autoseo_meta_keywords', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_autoseo_managed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_autoseo_article_id', '_autoseo_infographic_image_id', '_autoseo_content_markdown', '_autoseo_meta_description', '_autoseo_keywords', '_autoseo_hero_image_url', '_autoseo_infographic_image_url', '_autoseo_infographic_html', '_autoseo_wordpress_tags', '_autoseo_meta_keywords', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_autoseo_managed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_autoseo_article_id', '_autoseo_infographic_image_id', '_autoseo_content_markdown', '_autoseo_meta_description', '_autoseo_keywords', '_autoseo_hero_image_url', '_autoseo_infographic_image_url', '_autoseo_infographic_html', '_autoseo_wordpress_tags', '_autoseo_meta_keywords', '_yoast_wpseo_metadesc', '_yoast_wpseo_focuskw', '_autoseo_managed');

