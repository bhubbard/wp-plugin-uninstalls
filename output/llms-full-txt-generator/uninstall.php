<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llms_full_txt_generator_initialized');
delete_site_option('llms_full_txt_generator_initialized');
delete_option('llms_full_txt_generator_post_types');
delete_site_option('llms_full_txt_generator_post_types');
delete_option('llms_full_txt_generator_post_types_order');
delete_site_option('llms_full_txt_generator_post_types_order');
delete_option('llms_full_txt_generator_files_to_generate');
delete_site_option('llms_full_txt_generator_files_to_generate');
delete_option('llms_full_txt_generator_respect_seo');
delete_site_option('llms_full_txt_generator_respect_seo');
delete_option('llms_full_txt_generator_include_urls');
delete_site_option('llms_full_txt_generator_include_urls');
delete_option('llms_full_txt_generator_exclude_urls');
delete_site_option('llms_full_txt_generator_exclude_urls');
delete_option('llms_full_txt_generator_include_admin_email');
delete_site_option('llms_full_txt_generator_include_admin_email');
delete_option('llms_full_txt_generator_admin_email');
delete_site_option('llms_full_txt_generator_admin_email');
delete_option('llms_full_txt_generator_enabled');
delete_site_option('llms_full_txt_generator_enabled');
delete_option('llms_full_txt_generator_products_enabled');
delete_site_option('llms_full_txt_generator_products_enabled');
delete_option('llms_full_txt_generator_include_excerpt');
delete_site_option('llms_full_txt_generator_include_excerpt');
delete_option('llms_full_txt_generator_company_name');
delete_site_option('llms_full_txt_generator_company_name');
delete_option('llms_full_txt_generator_update_frequency');
delete_site_option('llms_full_txt_generator_update_frequency');
delete_option('llms_full_txt_generator_multilingual');
delete_site_option('llms_full_txt_generator_multilingual');
delete_option('llms_full_txt_generator_show_product_price');
delete_site_option('llms_full_txt_generator_show_product_price');
delete_option('llms_full_txt_generator_show_product_categories');
delete_site_option('llms_full_txt_generator_show_product_categories');
delete_option('llms_full_txt_generator_show_product_tags');
delete_site_option('llms_full_txt_generator_show_product_tags');
delete_option('llms_full_txt_generator_show_product_ratings');
delete_site_option('llms_full_txt_generator_show_product_ratings');
delete_option('llms_full_txt_generator_show_product_url');
delete_site_option('llms_full_txt_generator_show_product_url');
delete_option('llms_full_txt_generator_show_product_image_url');
delete_site_option('llms_full_txt_generator_show_product_image_url');
delete_option('llms_full_txt_generator_exclude_product_categories');
delete_site_option('llms_full_txt_generator_exclude_product_categories');
delete_option('llms_full_txt_generator_exclude_product_tags');
delete_site_option('llms_full_txt_generator_exclude_product_tags');
delete_option('llms_full_txt_generator_show_post_categories');
delete_site_option('llms_full_txt_generator_show_post_categories');
delete_option('llms_full_txt_generator_show_post_tags');
delete_site_option('llms_full_txt_generator_show_post_tags');
delete_option('llms_full_txt_generator_exclude_post_categories');
delete_site_option('llms_full_txt_generator_exclude_post_categories');
delete_option('llms_full_txt_generator_exclude_post_tags');
delete_site_option('llms_full_txt_generator_exclude_post_tags');
delete_option('llms_full_txt_generator_company_description');
delete_site_option('llms_full_txt_generator_company_description');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_meta-robots-noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_meta-robots-noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_meta-robots-noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_meta-robots-noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_robots' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_seopress_robots_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_seopress_robots_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_seopress_robots_index' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_seopress_robots_index' ) );

