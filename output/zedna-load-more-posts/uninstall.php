<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('posts_parent_container');
delete_site_option('posts_parent_container');
delete_option('pagination_container');
delete_site_option('pagination_container');
delete_option('article_contianer');
delete_site_option('article_contianer');
delete_option('load_on_scroll');
delete_site_option('load_on_scroll');
delete_option('lang_text_button_default');
delete_site_option('lang_text_button_default');
delete_option('lang_text_button_loading');
delete_site_option('lang_text_button_loading');
delete_option('lang_text_button_nopost');
delete_site_option('lang_text_button_nopost');

