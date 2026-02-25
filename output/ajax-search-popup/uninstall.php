<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s_popup_title');
delete_site_option('s_popup_title');
delete_option('s_popup_post');
delete_site_option('s_popup_post');
delete_option('s_popup_page');
delete_site_option('s_popup_page');
delete_option('s_popup_posts_per_page');
delete_site_option('s_popup_posts_per_page');

