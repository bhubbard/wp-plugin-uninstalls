<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sra_show_posts_at_home');
delete_site_option('sra_show_posts_at_home');
delete_option('schat_color');
delete_site_option('schat_color');
delete_option('schat_theme');
delete_site_option('schat_theme');
delete_option('schat_notification');
delete_site_option('schat_notification');
delete_option('simple_chat_version');
delete_site_option('simple_chat_version');

