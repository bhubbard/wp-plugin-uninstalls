<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beans_post_meta_above_content');
delete_site_option('beans_post_meta_above_content');
delete_option('beans_remove_post_meta_above_content_checkbox');
delete_site_option('beans_remove_post_meta_above_content_checkbox');
delete_option('beans_post_meta_below_content');
delete_site_option('beans_post_meta_below_content');
delete_option('beans_remove_post_meta_below_content_checkbox');
delete_site_option('beans_remove_post_meta_below_content_checkbox');
delete_option('beans_split_footer_left');
delete_site_option('beans_split_footer_left');
delete_option('beans_remove_split_footer_left_checkbox');
delete_site_option('beans_remove_split_footer_left_checkbox');
delete_option('beans_split_footer_right');
delete_site_option('beans_split_footer_right');
delete_option('beans_remove_split_footer_right_checkbox');
delete_site_option('beans_remove_split_footer_right_checkbox');
delete_option('beans_center_footer');
delete_site_option('beans_center_footer');
delete_option('beans_show_center_footer_checkbox');
delete_site_option('beans_show_center_footer_checkbox');

