<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w3p_image_alt');
delete_site_option('w3p_image_alt');
delete_option('w3p_enable_sitemap');
delete_site_option('w3p_enable_sitemap');
delete_option('w3p_enable_sitemap_users');
delete_site_option('w3p_enable_sitemap_users');
delete_option('w3p_sitemap_links');
delete_site_option('w3p_sitemap_links');
delete_option('w3p_enable_title_description');
delete_site_option('w3p_enable_title_description');
delete_option('w3p_og');
delete_site_option('w3p_og');
delete_option('w3p_kg_type');
delete_site_option('w3p_kg_type');
delete_option('w3p_kg_name');
delete_site_option('w3p_kg_name');
delete_option('w3p_kg_logo');
delete_site_option('w3p_kg_logo');
delete_option('w3p_kg_same_as');
delete_site_option('w3p_kg_same_as');
delete_option('w3p_schema_breadcrumbs');
delete_site_option('w3p_schema_breadcrumbs');
delete_option('w3p_noindex_queries');
delete_site_option('w3p_noindex_queries');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'w3p_enable_sitemap_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('w3p_enable_yoast_migrator');
delete_site_option('w3p_enable_yoast_migrator');
delete_option('w3p_enable_rankmath_migrator');
delete_site_option('w3p_enable_rankmath_migrator');
delete_option('w3p_google_webmaster');
delete_site_option('w3p_google_webmaster');
delete_option('w3p_bing_webmaster');
delete_site_option('w3p_bing_webmaster');
delete_option('w3p_pinterest_webmaster');
delete_site_option('w3p_pinterest_webmaster');
delete_option('w3p_twitter_author');
delete_site_option('w3p_twitter_author');
delete_option('w3p_local');
delete_site_option('w3p_local');
delete_option('w3p_local_locality');
delete_site_option('w3p_local_locality');
delete_option('w3p_local_region');
delete_site_option('w3p_local_region');
delete_option('w3p_local_address');
delete_site_option('w3p_local_address');
delete_option('w3p_local_postal_code');
delete_site_option('w3p_local_postal_code');
delete_option('w3p_local_country');
delete_site_option('w3p_local_country');
delete_option('w3p_local_country_code');
delete_site_option('w3p_local_country_code');
delete_option('w3p_telephone');
delete_site_option('w3p_telephone');
delete_option('w3p_local_image_1');
delete_site_option('w3p_local_image_1');
delete_option('w3p_local_image_2');
delete_site_option('w3p_local_image_2');
delete_option('w3p_fb_default_image');
delete_site_option('w3p_fb_default_image');
delete_option('w3p_image_license_url');
delete_site_option('w3p_image_license_url');
delete_option('w3p_image_acquire_license_url');
delete_site_option('w3p_image_acquire_license_url');
delete_option('w3p_module_mat');
delete_site_option('w3p_module_mat');
delete_option('w3p_module_seo');
delete_site_option('w3p_module_seo');
delete_option('w3p_sitemap_types');
delete_site_option('w3p_sitemap_types');
delete_option('wot-verification');
delete_site_option('wot-verification');
delete_option('w3p_topic_clustering');
delete_site_option('w3p_topic_clustering');
delete_option('w3p_enable_link_whisper');
delete_site_option('w3p_enable_link_whisper');
delete_option('w3p_link_repeater');
delete_site_option('w3p_link_repeater');
delete_option('w3p_yandex_webmaster');
delete_site_option('w3p_yandex_webmaster');
delete_option('w3p_baidu_webmaster');
delete_site_option('w3p_baidu_webmaster');
delete_option('w3p_wot_webmaster');
delete_site_option('w3p_wot_webmaster');
delete_option('w3p_majestic_webmaster');
delete_site_option('w3p_majestic_webmaster');
delete_option('w3p_fb_app_id');
delete_site_option('w3p_fb_app_id');
delete_option('w3p_homepage_description');
delete_site_option('w3p_homepage_description');
delete_option('w3p_fb_admin_id');
delete_site_option('w3p_fb_admin_id');
delete_option('w3p_od');
delete_site_option('w3p_od');
delete_option('w3p_google_analytics');
delete_site_option('w3p_google_analytics');
delete_option('w3p_google_tag_manager');
delete_site_option('w3p_google_tag_manager');
delete_option('w3p_head_section');
delete_site_option('w3p_head_section');
delete_option('w3p_footer_section');
delete_site_option('w3p_footer_section');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_w3p_kg_logo_dimensions_%', '_site_transient_w3p_kg_logo_dimensions_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_w3p_kg_logo_attachment_id_%', '_site_transient_w3p_kg_logo_attachment_id_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_w3p_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_w3p_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_w3p_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_w3p_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_w3p_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_w3p_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_w3p_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_w3p_excerpt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_w3p_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_w3p_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_w3p_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_w3p_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rank_math_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rank_math_description' ) );

