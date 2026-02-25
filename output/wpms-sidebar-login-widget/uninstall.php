<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('network_sidebar_login_rememberme');
delete_site_option('network_sidebar_login_rememberme');
delete_option('network_sidebar_login_subscribe_main_site');
delete_site_option('network_sidebar_login_subscribe_main_site');
delete_option('network_sidebar_login_subscribe_other_blog');
delete_site_option('network_sidebar_login_subscribe_other_blog');
delete_option('network_sidebar_login_forum_installed');
delete_site_option('network_sidebar_login_forum_installed');
delete_option('network_sidebar_login_forum_url');
delete_site_option('network_sidebar_login_forum_url');
delete_option('network_sidebar_login_css');
delete_site_option('network_sidebar_login_css');
delete_option('network_sidebar_login_custom_url');
delete_site_option('network_sidebar_login_custom_url');
delete_option('network_sidebar_login_subblog');
delete_site_option('network_sidebar_login_subblog');

