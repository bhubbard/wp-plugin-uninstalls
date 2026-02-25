<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('convert_data_taxonomy');
delete_site_option('convert_data_taxonomy');
delete_option('convert_data_post_type');
delete_site_option('convert_data_post_type');
delete_option('convert_data_order');
delete_site_option('convert_data_order');
delete_option('convert_data_orderby');
delete_site_option('convert_data_orderby');
delete_option('convert_data_posts');
delete_site_option('convert_data_posts');
delete_option('convert_data_custom_field_1');
delete_site_option('convert_data_custom_field_1');
delete_option('convert_data_custom_field_2');
delete_site_option('convert_data_custom_field_2');
delete_option('convert_data_custom_field_3');
delete_site_option('convert_data_custom_field_3');
delete_option('convert_data_custom_field_4');
delete_site_option('convert_data_custom_field_4');
delete_option('convert_data_custom_field_5');
delete_site_option('convert_data_custom_field_5');
delete_option('convert_data_categories_exclude');
delete_site_option('convert_data_categories_exclude');
delete_option('convert_data_view_just_parent');
delete_site_option('convert_data_view_just_parent');
delete_option('convert_data_type');
delete_site_option('convert_data_type');
delete_option('convert_data_prefix');
delete_site_option('convert_data_prefix');
delete_option('convert_data_view_source_categories');
delete_site_option('convert_data_view_source_categories');
delete_option('convert_data_view_source_posts_ids');
delete_site_option('convert_data_view_source_posts_ids');
delete_option('convert_data_view_source_posts_info');
delete_site_option('convert_data_view_source_posts_info');

