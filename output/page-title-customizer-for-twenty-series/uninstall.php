<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pt_title_css_value_all');
delete_site_option('pt_title_css_value_all');
delete_option('pt_title_css_value_all_smart');
delete_site_option('pt_title_css_value_all_smart');
delete_option('pt_title_css_value_all_pc');
delete_site_option('pt_title_css_value_all_pc');
delete_option('pt_title_css_value_all2');
delete_site_option('pt_title_css_value_all2');
delete_option('pt_title_css_value_all_smart2');
delete_site_option('pt_title_css_value_all_smart2');
delete_option('pt_title_css_value_all_pc2');
delete_site_option('pt_title_css_value_all_pc2');
delete_option('pt_title_css_value_category');
delete_site_option('pt_title_css_value_category');
delete_option('pt_title_css_value_category_smart');
delete_site_option('pt_title_css_value_category_smart');
delete_option('pt_title_css_value_category_pc');
delete_site_option('pt_title_css_value_category_pc');
delete_option('pt_title_css_value_category2');
delete_site_option('pt_title_css_value_category2');
delete_option('pt_title_css_value_category_smart2');
delete_site_option('pt_title_css_value_category_smart2');
delete_option('pt_title_css_value_category_pc2');
delete_site_option('pt_title_css_value_category_pc2');
delete_option('pt_title_css_value_post');
delete_site_option('pt_title_css_value_post');
delete_option('pt_title_css_value_post_smart');
delete_site_option('pt_title_css_value_post_smart');
delete_option('pt_title_css_value_post_pc');
delete_site_option('pt_title_css_value_post_pc');
delete_option('pt_title_css_value_post2');
delete_site_option('pt_title_css_value_post2');
delete_option('pt_title_css_value_post_smart2');
delete_site_option('pt_title_css_value_post_smart2');
delete_option('pt_title_css_value_post_pc2');
delete_site_option('pt_title_css_value_post_pc2');
delete_option('pt_title_css_category_all');
delete_site_option('pt_title_css_category_all');
delete_option('pt_title_css_post_all');
delete_site_option('pt_title_css_post_all');
delete_option('pt_title_css_category_all2');
delete_site_option('pt_title_css_category_all2');
delete_option('pt_title_css_post_all2');
delete_site_option('pt_title_css_post_all2');

