<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbb_config_path');
delete_site_option('wpbb_config_path');
delete_option('wpbb_ucp_path');
delete_site_option('wpbb_ucp_path');
delete_option('wpbb_avatars');
delete_site_option('wpbb_avatars');
delete_option('wpbb_activate');
delete_site_option('wpbb_activate');
delete_option('wpbb_dbms_charset');
delete_site_option('wpbb_dbms_charset');
delete_option('wpbb_deactivation_password');
delete_site_option('wpbb_deactivation_password');
delete_option('wpbb_maximu_retries');
delete_site_option('wpbb_maximu_retries');
delete_option('wpbb_times');
delete_site_option('wpbb_times');
delete_option('wpbb_post_posts');
delete_site_option('wpbb_post_posts');
delete_option('wpbb_post_locked');
delete_site_option('wpbb_post_locked');
delete_option('wpbb_width');
delete_site_option('wpbb_width');
delete_option('widget_wpb_user');
delete_site_option('widget_wpb_user');
delete_option('wpbb_backlink');
delete_site_option('wpbb_backlink');
delete_option('wpbb_users_posting');
delete_site_option('wpbb_users_posting');
delete_option('wpbb_forums_categories');
delete_site_option('wpbb_forums_categories');
delete_option('wpbb_version');
delete_site_option('wpbb_version');
delete_option('wpb_active');
delete_site_option('wpb_active');
delete_option('wpb_avatar');
delete_site_option('wpb_avatar');
delete_option('wpb_path');
delete_site_option('wpb_path');
delete_option('wpb_url');
delete_site_option('wpb_url');
delete_option('wpbb_t');
delete_site_option('wpbb_t');
delete_option('wpbb_rewrite');
delete_site_option('wpbb_rewrite');

