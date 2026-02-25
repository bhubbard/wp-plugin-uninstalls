<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('relpoststh_bordercolor');
delete_site_option('relpoststh_bordercolor');
delete_option('relpoststh_background');
delete_site_option('relpoststh_background');
delete_option('relpoststh_hoverbackground');
delete_site_option('relpoststh_hoverbackground');
delete_option('relpoststh_fontsize');
delete_site_option('relpoststh_fontsize');
delete_option('relpoststh_fontcolor');
delete_site_option('relpoststh_fontcolor');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpb_sdk_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('relpoststh_single_only');
delete_site_option('relpoststh_single_only');
delete_option('relpoststh_column');
delete_site_option('relpoststh_column');
delete_option('relpoststh_column_t');
delete_site_option('relpoststh_column_t');
delete_option('relpoststh_column_m');
delete_site_option('relpoststh_column_m');
delete_option('relpoststh_image_size');
delete_site_option('relpoststh_image_size');
delete_option('relpoststh_mobile_view');
delete_site_option('relpoststh_mobile_view');
delete_option('relpoststh_show_taxonomy');
delete_site_option('relpoststh_show_taxonomy');
delete_option('relpoststh_post_types');
delete_site_option('relpoststh_post_types');
delete_option('relpoststh_onlywiththumbs');
delete_site_option('relpoststh_onlywiththumbs');
delete_option('relpoststh_articlefirstimage');
delete_site_option('relpoststh_articlefirstimage');
delete_option('relpoststh_show_date');
delete_site_option('relpoststh_show_date');
delete_option('relpoststh_output_style');
delete_site_option('relpoststh_output_style');
delete_option('relpoststh_date_format');
delete_site_option('relpoststh_date_format');
delete_option('relpoststh_cleanhtml');
delete_site_option('relpoststh_cleanhtml');
delete_option('relpoststh_auto');
delete_site_option('relpoststh_auto');
delete_option('relpoststh_top_text');
delete_site_option('relpoststh_top_text');
delete_option('relpoststh_number');
delete_site_option('relpoststh_number');
delete_option('relpoststh_relation');
delete_site_option('relpoststh_relation');
delete_option('relpoststh_default_image');
delete_site_option('relpoststh_default_image');
delete_option('relpoststh_poststhname');
delete_site_option('relpoststh_poststhname');
delete_option('relpoststh_fontfamily');
delete_site_option('relpoststh_fontfamily');
delete_option('relpoststh_textlength');
delete_site_option('relpoststh_textlength');
delete_option('relpoststh_excerptlength');
delete_site_option('relpoststh_excerptlength');
delete_option('relpoststh_thsource');
delete_site_option('relpoststh_thsource');
delete_option('relpoststh_customfield');
delete_site_option('relpoststh_customfield');
delete_option('relpoststh_theme_resize_url');
delete_site_option('relpoststh_theme_resize_url');
delete_option('relpoststh_customwidth');
delete_site_option('relpoststh_customwidth');
delete_option('relpoststh_customheight');
delete_site_option('relpoststh_customheight');
delete_option('relpoststh_textblockheight');
delete_site_option('relpoststh_textblockheight');
delete_option('rpt_post_sort');
delete_site_option('rpt_post_sort');
delete_option('relpoststh_categories');
delete_site_option('relpoststh_categories');
delete_option('relpoststh_categoriesall');
delete_site_option('relpoststh_categoriesall');
delete_option('relpoststh_show_categoriesall');
delete_site_option('relpoststh_show_categoriesall');
delete_option('relpoststh_show_categories');
delete_site_option('relpoststh_show_categories');
delete_option('relpoststh_devmode');
delete_site_option('relpoststh_devmode');
delete_option('relpoststh_title_tag');
delete_site_option('relpoststh_title_tag');
delete_option('relpoststh_spacing');
delete_site_option('relpoststh_spacing');
delete_option('relpoststh_startdate');
delete_site_option('relpoststh_startdate');
delete_option('relpoststh_custom_taxonomies');
delete_site_option('relpoststh_custom_taxonomies');
delete_option('wpb_sdk_module_id');
delete_site_option('wpb_sdk_module_id');
delete_option('wpb_sdk_module_slug');
delete_site_option('wpb_sdk_module_slug');
delete_option('wpb_api_cache');
delete_site_option('wpb_api_cache');
delete_option('wpb_sdk_related-posts-thumbnails');
delete_site_option('wpb_sdk_related-posts-thumbnails');
delete_option('_rpt_optin');
delete_site_option('_rpt_optin');
delete_option('rpt_review_dismiss');
delete_site_option('rpt_review_dismiss');
delete_option('rpt_active_time');
delete_site_option('rpt_active_time');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_yoast_wpseo_primary_%' ) );

