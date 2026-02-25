<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bt_post_type');
delete_site_option('bt_post_type');
delete_option('bt_pagination');
delete_site_option('bt_pagination');
delete_option('bt_comments_per_page');
delete_site_option('bt_comments_per_page');
delete_option('bt_exclude_post');
delete_site_option('bt_exclude_post');
delete_option('biztech_sac_avatar');
delete_site_option('biztech_sac_avatar');
delete_option('biztech_show_date');
delete_site_option('biztech_show_date');
delete_option('biztech_open_new_tab');
delete_site_option('biztech_open_new_tab');
delete_option('biztech_comments_order');
delete_site_option('biztech_comments_order');
delete_option('bt_display_filter');
delete_site_option('bt_display_filter');
delete_option('bt_show_post_link');
delete_site_option('bt_show_post_link');
delete_option('bt_show_comment_link');
delete_site_option('bt_show_comment_link');

