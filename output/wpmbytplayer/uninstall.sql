-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mbYTPlayer_version', 'mbYTPlayer_is_active', 'mbYTPlayer_video_url', 'mbYTPlayer_video_page', 'mbYTPlayer_remember_last_time', 'mbYTPlayer_init_delay', 'mbYTPlayer_price', 'mbYTPlayer_Home_is_active', 'mbYTPlayer_home_video_url', 'mbYTPlayer_home_video_page');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismiss';

