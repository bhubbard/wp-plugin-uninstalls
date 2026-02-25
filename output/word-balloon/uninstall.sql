-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('word_balloon_pro_license_info', 'word_balloon_wallpaper_settings', 'word_balloon_favorite_settings', 'word_balloon_admin_settings', 'word_balloon_post_settings', 'word_balloon_system_settings', 'word_balloon_version', 'word_balloon_db_version', 'word_balloon');

