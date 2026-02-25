<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_in_article_ad_code');
delete_site_option('wp_in_article_ad_code');
delete_option('wp_post_article_ad_code');
delete_site_option('wp_post_article_ad_code');
delete_option('wp_ad_camp_1_code');
delete_site_option('wp_ad_camp_1_code');
delete_option('wp_ad_camp_2_code');
delete_site_option('wp_ad_camp_2_code');
delete_option('wp_ad_camp_3_code');
delete_site_option('wp_ad_camp_3_code');
delete_option('wp_ad_camp_4_code');
delete_site_option('wp_ad_camp_4_code');
delete_option('wp_ad_camp_5_code');
delete_site_option('wp_ad_camp_5_code');

