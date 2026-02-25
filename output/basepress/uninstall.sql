-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('basepress_run_wizard', 'basepress_settings', 'basepress_regex_word_boundary', 'basepress_icons_sets', 'sidebars_widgets', 'basepress_ver', 'basepress_db_ver', 'basepress_plan', 'widget_basepress_products_widget', 'widget_basepress_sections_widget', 'widget_basepress_related_articles_widget', 'widget_basepress_popular_articles_widget', 'widget_basepress_toc_widget', 'widget_basepress_tag_cloud', 'widget_basepress_nav_widget', 'knowledgebase_cat_children', 'basepress_modern_theme', 'basepress_default_theme', 'basepress_zen_theme', 'basepress_restriction_presets', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'rewrite_rules', 'basepress_flush_rules', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('basepress_post_icon', 'image', 'basepress_position', 'visibility', 'sections_style', 'icon', 'basepress_template_name', 'basepress_views', 'basepress_toc_toggle');
DELETE FROM wp_usermeta WHERE meta_key IN ('basepress_post_icon', 'image', 'basepress_position', 'visibility', 'sections_style', 'icon', 'basepress_template_name', 'basepress_views', 'basepress_toc_toggle');
DELETE FROM wp_termmeta WHERE meta_key IN ('basepress_post_icon', 'image', 'basepress_position', 'visibility', 'sections_style', 'icon', 'basepress_template_name', 'basepress_views', 'basepress_toc_toggle');
DELETE FROM wp_commentmeta WHERE meta_key IN ('basepress_post_icon', 'image', 'basepress_position', 'visibility', 'sections_style', 'icon', 'basepress_template_name', 'basepress_views', 'basepress_toc_toggle');

