<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpjomniaga_username');
delete_site_option('wpjomniaga_username');
delete_option('wpjomniaga_tracking_code');
delete_site_option('wpjomniaga_tracking_code');
delete_option('wpjomniaga_category');
delete_site_option('wpjomniaga_category');
delete_option('wpjomniaga_related_show');
delete_site_option('wpjomniaga_related_show');
delete_option('wpjomniaga_related_title');
delete_site_option('wpjomniaga_related_title');
delete_option('wpjomniaga_related_number');
delete_site_option('wpjomniaga_related_number');
delete_option('wpjomniaga_convert_home');
delete_site_option('wpjomniaga_convert_home');
delete_option('wpjomniaga_convert_single_post');
delete_site_option('wpjomniaga_convert_single_post');
delete_option('wpjomniaga_convert_single_page');
delete_site_option('wpjomniaga_convert_single_page');
delete_option('wpjomniaga_convert_comment');
delete_site_option('wpjomniaga_convert_comment');
delete_option('wpjomniaga_convert_archive');
delete_site_option('wpjomniaga_convert_archive');
delete_option('wpjomniaga_convert_limit_perpage');
delete_site_option('wpjomniaga_convert_limit_perpage');
delete_option('wpjomniaga_keyword_limit_perpage');
delete_site_option('wpjomniaga_keyword_limit_perpage');
delete_option('wpjomniaga_convert_limit_percomment');
delete_site_option('wpjomniaga_convert_limit_percomment');
delete_option('wpjomniaga_keyword_limit_percomment');
delete_site_option('wpjomniaga_keyword_limit_percomment');
delete_option('wpjomniaga_link_new_window');
delete_site_option('wpjomniaga_link_new_window');
delete_option('wpjomniaga_link_no_follow');
delete_site_option('wpjomniaga_link_no_follow');

