<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rc_reply_show_refresh');
delete_site_option('rc_reply_show_refresh');
delete_option('rc_reply_show_single');
delete_site_option('rc_reply_show_single');
delete_option('rc_reply_show_post');
delete_site_option('rc_reply_show_post');
delete_option('rc_reply_submit_shortcuts');
delete_site_option('rc_reply_submit_shortcuts');
delete_option('rc_reply_btn_name');
delete_site_option('rc_reply_btn_name');
delete_option('rc_reply_show_nav');
delete_site_option('rc_reply_show_nav');
delete_option('rc_reply_comment_number');
delete_site_option('rc_reply_comment_number');
delete_option('rc_reply_only_admin');
delete_site_option('rc_reply_only_admin');
delete_option('rc_reply_auto_at');
delete_site_option('rc_reply_auto_at');
delete_option('rc_reply_btn_list');
delete_site_option('rc_reply_btn_list');
delete_option('rc_reply_avatar_right');
delete_site_option('rc_reply_avatar_right');
delete_option('rc_reply_show_admin');
delete_site_option('rc_reply_show_admin');
delete_option('rc_reply_comment_length');
delete_site_option('rc_reply_comment_length');
delete_option('rc_reply_avatar_size');
delete_site_option('rc_reply_avatar_size');
delete_option('rc_reply_show_avatar');
delete_site_option('rc_reply_show_avatar');
delete_option('rc_reply_files');
delete_site_option('rc_reply_files');

