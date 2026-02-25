<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nwowls_news_limit');
delete_site_option('nwowls_news_limit');
delete_option('nwowls_news_auto_play');
delete_site_option('nwowls_news_auto_play');
delete_option('nwowls_news_nav');
delete_site_option('nwowls_news_nav');
delete_option('nwowls_news_pagination');
delete_site_option('nwowls_news_pagination');
delete_option('nwowls_news_loop');
delete_site_option('nwowls_news_loop');
delete_option('nwowls_news_autoplay_time');
delete_site_option('nwowls_news_autoplay_time');
delete_option('nwowls_news_hover_pause');
delete_site_option('nwowls_news_hover_pause');
delete_option('nwowls_news_loop_length');
delete_site_option('nwowls_news_loop_length');
delete_option('nwowls_news_show_category');
delete_site_option('nwowls_news_show_category');
delete_option('nwowls_news_show_date');
delete_site_option('nwowls_news_show_date');
delete_option('nwowls_news_show_dots');
delete_site_option('nwowls_news_show_dots');
delete_option('nwowls_news_title_word_limit');
delete_site_option('nwowls_news_title_word_limit');
delete_option('nwowls_news_content_word_limit');
delete_site_option('nwowls_news_content_word_limit');
delete_option('nwowls_news_show_full_content');
delete_site_option('nwowls_news_show_full_content');
delete_option('nwowls_news_order');
delete_site_option('nwowls_news_order');
delete_option('nwowls_news_read_more_text');
delete_site_option('nwowls_news_read_more_text');
delete_option('nwowls_news_grid');
delete_site_option('nwowls_news_grid');

