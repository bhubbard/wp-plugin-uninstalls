<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_load_posts_date');
delete_site_option('wp_load_posts_date');
delete_option('wp_load_posts_comment');
delete_site_option('wp_load_posts_comment');
delete_option('wp_load_post_category');
delete_site_option('wp_load_post_category');
delete_option('wp_load_default_col');
delete_site_option('wp_load_default_col');
delete_option('wp_post_per_page');
delete_site_option('wp_post_per_page');
delete_option('wp_load_more_btn_Txt');
delete_site_option('wp_load_more_btn_Txt');
delete_option('wp_load_more_Bg_color');
delete_site_option('wp_load_more_Bg_color');
delete_option('wp_load_more_Tx_color');
delete_site_option('wp_load_more_Tx_color');
delete_option('wp_load_more_Hbg_color');
delete_site_option('wp_load_more_Hbg_color');
delete_option('wp_load_more_Htx_color');
delete_site_option('wp_load_more_Htx_color');
delete_option('wp_load_less_Btn');
delete_site_option('wp_load_less_Btn');
delete_option('wp_hide_btn_Txt');
delete_site_option('wp_hide_btn_Txt');
delete_option('wp_post_excerpt_content');
delete_site_option('wp_post_excerpt_content');

