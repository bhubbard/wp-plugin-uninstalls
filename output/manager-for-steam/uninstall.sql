-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('steammanager_api_key', 'steammanager_steam_id', 'steammanager_show_top_bar', 'steammanager_custom_templates', 'steammanager_api_key_encrypted', 'steammanager_bad_images_cache', 'steammanager_top_bar_pages', 'steammanager_activation_notice', 'steammanager_apps_cache', 'steammanager_profile_cache', 'steammanager_library_cache');

