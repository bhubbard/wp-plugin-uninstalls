<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_share_sticky_fb');
delete_site_option('simple_share_sticky_fb');
delete_option('simple_share_sticky_tw');
delete_site_option('simple_share_sticky_tw');
delete_option('simple_share_sticky_g');
delete_site_option('simple_share_sticky_g');
delete_option('simple_share_sticky_li');
delete_site_option('simple_share_sticky_li');
delete_option('simple_share_sticky_pt');
delete_site_option('simple_share_sticky_pt');
delete_option('simple_share_sticky_su');
delete_site_option('simple_share_sticky_su');
delete_option('simple_share_sticky_posts');
delete_site_option('simple_share_sticky_posts');
delete_option('simple_share_sticky_pages');
delete_site_option('simple_share_sticky_pages');
delete_option('simple_share_sticky_custom');
delete_site_option('simple_share_sticky_custom');
delete_option('simple_share_sticky_archive');
delete_site_option('simple_share_sticky_archive');
delete_option('simple_share_sticky_home');
delete_site_option('simple_share_sticky_home');

