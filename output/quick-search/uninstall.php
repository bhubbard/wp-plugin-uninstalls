<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('quick_search_form_id');
delete_site_option('quick_search_form_id');
delete_option('quick_search_max_chars');
delete_site_option('quick_search_max_chars');
delete_option('quick_search_show_posts');
delete_site_option('quick_search_show_posts');
delete_option('quick_search_show_pages');
delete_site_option('quick_search_show_pages');
delete_option('quick_search_show_comments');
delete_site_option('quick_search_show_comments');
delete_option('quick_search_posts_limit');
delete_site_option('quick_search_posts_limit');
delete_option('quick_search_pages_limit');
delete_site_option('quick_search_pages_limit');
delete_option('quick_search_comments_limit');
delete_site_option('quick_search_comments_limit');
delete_option('quick_search_menu_width');
delete_site_option('quick_search_menu_width');
delete_option('quick_search_menu_bgcolor');
delete_site_option('quick_search_menu_bgcolor');
delete_option('quick_search_menu_label_bgcolor');
delete_site_option('quick_search_menu_label_bgcolor');
delete_option('quick_search_menu_label_color');
delete_site_option('quick_search_menu_label_color');

