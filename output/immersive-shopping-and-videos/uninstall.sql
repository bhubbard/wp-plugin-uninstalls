-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('immersive_shopping_videos_api_key', 'immersive_shopping_videos_version', 'immersive_shopping_videos_operations', 'immersive_shopping_videos_app_id', 'immersive_shopping_videos_settings', 'immersive_shopping_videos_db_version', 'immersive_shopping_videos_temp_data', 'immersive_shopping_videos_cache');

