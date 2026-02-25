-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('geekp_PluginPress_User', 'geekp_PluginPress_Api_Key', 'geekp_PluginPress_Secret', 'geekp_api_key', 'geekp_post_types', 'rewrite_rules', 'geekp_custom_pages', 'geekp_custom_page_links', 'geekp_external_logos', 'geekp_selected_credits', 'geekp_lang', 'geekLang', 'geekp_rating_instead_imdb', 'geekp_rating_instead_igdb', 'geekp_publish_perm', 'geekp_Plugin_Version', 'geekp_PluginPress_Count', 'geekp_permalink_endpoints', 'geekp_permalink_roots', 'geekp_version', 'geekp_field_category', 'geekp_imageViewer', 'geekp_videoViewer', 'geekp_userIntegration', 'geekp_game_theme', 'geekp_theme', 'geekp_register_page', 'geekp_user_settings', 'geekp_user_permalink');
DELETE FROM wp_options WHERE option_name LIKE 'geekp_PluginPress_Def_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attached_file');

