-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kblog_danmaku_url', 'kblog_danmaku_token', 'kblog_enable_hls', 'kblog_enable_flv', 'kblog_danmaku_dplayer_version', 'kblog_danmaku_dplayer_version_check');

