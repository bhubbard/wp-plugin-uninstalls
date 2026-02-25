-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'elex_yt_configuration_settings', 'elex_yt_gallery_settings', 'elex_yt_video_player_settings', 'system_info_remote_url');
DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again';
DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later';
DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again';

