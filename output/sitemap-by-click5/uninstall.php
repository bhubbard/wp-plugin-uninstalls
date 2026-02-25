<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('click5_sitemap_url_target_blanc');
delete_site_option('click5_sitemap_url_target_blanc');
delete_option('click5_sitemap_html_pagination_items_per_page');
delete_site_option('click5_sitemap_html_pagination_items_per_page');
delete_option('click5_sitemap_html_blog_group_by');
delete_site_option('click5_sitemap_html_blog_group_by');
delete_option('click5_sitemap_display_cat_tax');
delete_site_option('click5_sitemap_display_cat_tax');
delete_option('click5_sitemap_display_tag_tax');
delete_site_option('click5_sitemap_display_tag_tax');
delete_option('click5_sitemap_display_authors_tax');
delete_site_option('click5_sitemap_display_authors_tax');
delete_option('click5_sitemap_display_style');
delete_site_option('click5_sitemap_display_style');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_sitemap_use_custom_name_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_sitemap_custom_name_text_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tax' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_sitemap_order_list2');
delete_site_option('click5_sitemap_order_list2');
delete_option('click5_sitemap_order_list');
delete_site_option('click5_sitemap_order_list');
delete_option('click5_sitemap_order_list3');
delete_site_option('click5_sitemap_order_list3');
delete_option('click5_sitemap_order_list4');
delete_site_option('click5_sitemap_order_list4');
delete_option('click5_sitemap_blacklisted_array');
delete_site_option('click5_sitemap_blacklisted_array');
delete_option('click5_sitemap_display_columns');
delete_site_option('click5_sitemap_display_columns');
delete_option('click5_sitemap_html_blog_sort_by');
delete_site_option('click5_sitemap_html_blog_sort_by');
delete_option('click5_sitemap_html_blog_order_by');
delete_site_option('click5_sitemap_html_blog_order_by');
delete_option('click5_sitemap_urls_list');
delete_site_option('click5_sitemap_urls_list');
delete_option('click5_sitemap_custom_sorting');
delete_site_option('click5_sitemap_custom_sorting');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_sitemap_html_blog_treat_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_sitemap_order_list_nested');
delete_site_option('click5_sitemap_order_list_nested');
delete_option('click5_sitemap_order_list_old');
delete_site_option('click5_sitemap_order_list_old');
delete_option('click5_sitemap_seo_blacklisted_array');
delete_site_option('click5_sitemap_seo_blacklisted_array');
delete_option('click5_sitemap_seo_xml_categories');
delete_site_option('click5_sitemap_seo_xml_categories');
delete_option('click5_sitemap_seo_robots_txt');
delete_site_option('click5_sitemap_seo_robots_txt');
delete_option('click5_sitemap_seo_sitemap_xml');
delete_site_option('click5_sitemap_seo_sitemap_xml');
delete_option('click5_sitemap_seo_sitemap_type');
delete_site_option('click5_sitemap_seo_sitemap_type');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_sitemap_seo_post_type_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_sitemap_seo_xml_videos');
delete_site_option('click5_sitemap_seo_xml_videos');
delete_option('click5_sitemap_seo_xml_images');
delete_site_option('click5_sitemap_seo_xml_images');
delete_option('click5_sitemap_seo_xml_docs');
delete_site_option('click5_sitemap_seo_xml_docs');
delete_option('click5_sitemap_seo_xml_tags');
delete_site_option('click5_sitemap_seo_xml_tags');
delete_option('click5_sitemap_seo_xml_authors');
delete_site_option('click5_sitemap_seo_xml_authors');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_custom' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_sitemap_seo_robots_backup');
delete_site_option('click5_sitemap_seo_robots_backup');
delete_option('click5_sitemap_seo_include_sitemap_xml');
delete_site_option('click5_sitemap_seo_include_sitemap_xml');
delete_option('click5_sitemap_seo_auto');
delete_site_option('click5_sitemap_seo_auto');
delete_option('click5_sitemap_seo_cron');
delete_site_option('click5_sitemap_seo_cron');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_sitemap_authentication_token_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_sitemap_display_post');
delete_site_option('click5_sitemap_display_post');
delete_option('click5_sitemap_display_page');
delete_site_option('click5_sitemap_display_page');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'click5_sitemap_display_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('click5_sitemap_seo_post_type_post');
delete_site_option('click5_sitemap_seo_post_type_post');
delete_option('click5_sitemap_seo_post_type_page');
delete_site_option('click5_sitemap_seo_post_type_page');
delete_option('click5_sitemap_delete_robot');
delete_site_option('click5_sitemap_delete_robot');
delete_option('click5_sitemap_delete_robot_revert');
delete_site_option('click5_sitemap_delete_robot_revert');
delete_option('click5_sitemap_create_robots_txt');
delete_site_option('click5_sitemap_create_robots_txt');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'google_ping_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('aioseo_options');
delete_site_option('aioseo_options');
delete_option('click5_sitemap_robots_exist');
delete_site_option('click5_sitemap_robots_exist');
delete_option('click5_sitemap_first_load');
delete_site_option('click5_sitemap_first_load');
delete_option('click5_sitemap_post_template_HTML');
delete_site_option('click5_sitemap_post_template_HTML');
delete_option('click5_sitemap_is_multiple_time');
delete_site_option('click5_sitemap_is_multiple_time');
delete_option('click5_sitemap_seo_xml_custom_taxonomies');
delete_site_option('click5_sitemap_seo_xml_custom_taxonomies');

// Clear Cron Jobs
wp_clear_scheduled_hook('click5_sitemap_seo_cron');

