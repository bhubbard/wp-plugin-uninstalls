<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kblog_danmaku_url');
delete_site_option('kblog_danmaku_url');
delete_option('kblog_danmaku_token');
delete_site_option('kblog_danmaku_token');
delete_option('kblog_enable_hls');
delete_site_option('kblog_enable_hls');
delete_option('kblog_enable_flv');
delete_site_option('kblog_enable_flv');
delete_option('kblog_danmaku_dplayer_version');
delete_site_option('kblog_danmaku_dplayer_version');
delete_option('kblog_danmaku_dplayer_version_check');
delete_site_option('kblog_danmaku_dplayer_version_check');

