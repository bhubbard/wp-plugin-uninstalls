<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cspgbase_default_title_template');
delete_site_option('cspgbase_default_title_template');
delete_option('cspgbase_default_description_template');
delete_site_option('cspgbase_default_description_template');
delete_option('bsh_post_title_template');
delete_site_option('bsh_post_title_template');
delete_option('bsh_post_description_template');
delete_site_option('bsh_post_description_template');
delete_option('bsh_page_title_template');
delete_site_option('bsh_page_title_template');
delete_option('bsh_page_description_template');
delete_site_option('bsh_page_description_template');
delete_option('bsh_home_title_template');
delete_site_option('bsh_home_title_template');
delete_option('bsh_home_description_template');
delete_site_option('bsh_home_description_template');
delete_option('bsh_category_title_template');
delete_site_option('bsh_category_title_template');
delete_option('bsh_category_description_template');
delete_site_option('bsh_category_description_template');
delete_option('bsh_tag_title_template');
delete_site_option('bsh_tag_title_template');
delete_option('bsh_tag_description_template');
delete_site_option('bsh_tag_description_template');
delete_option('bsh_author_title_template');
delete_site_option('bsh_author_title_template');
delete_option('bsh_author_description_template');
delete_site_option('bsh_author_description_template');
delete_option('bsh_archive_title_template');
delete_site_option('bsh_archive_title_template');
delete_option('bsh_archive_description_template');
delete_site_option('bsh_archive_description_template');
delete_option('bsh_search_title_template');
delete_site_option('bsh_search_title_template');
delete_option('bsh_search_description_template');
delete_site_option('bsh_search_description_template');
delete_option('bsh_404_title_template');
delete_site_option('bsh_404_title_template');
delete_option('bsh_404_description_template');
delete_site_option('bsh_404_description_template');
delete_option('cspgbase_options');
delete_site_option('cspgbase_options');
delete_option('cspgbase_enable_open_graph');
delete_site_option('cspgbase_enable_open_graph');
delete_option('cspgbase_enable_twitter_cards');
delete_site_option('cspgbase_enable_twitter_cards');
delete_option('cspgbase_enable_canonical');
delete_site_option('cspgbase_enable_canonical');
delete_option('cspgbase_enable_author_meta');
delete_site_option('cspgbase_enable_author_meta');
delete_option('cspgbase_sitemap_settings');
delete_site_option('cspgbase_sitemap_settings');
delete_option('cspgbase_default_og_title_template');
delete_site_option('cspgbase_default_og_title_template');
delete_option('cspgbase_default_og_description_template');
delete_site_option('cspgbase_default_og_description_template');
delete_option('cspgbase_fallback_text');
delete_site_option('cspgbase_fallback_text');
delete_option('cspgbase_title_separator');
delete_site_option('cspgbase_title_separator');
delete_option('cspgbase_db_version');
delete_site_option('cspgbase_db_version');
delete_option('cspg_basic_seo_helper_sitemap_rewrite_version');
delete_site_option('cspg_basic_seo_helper_sitemap_rewrite_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basic_seo_helper_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basic_seo_helper_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basic_seo_helper_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basic_seo_helper_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basic_seo_helper_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basic_seo_helper_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basic_seo_helper_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basic_seo_helper_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basic_seo_helper_og_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basic_seo_helper_og_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basic_seo_helper_og_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basic_seo_helper_og_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basic_seo_helper_og_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basic_seo_helper_og_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basic_seo_helper_og_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basic_seo_helper_og_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basic_seo_helper_twitter_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basic_seo_helper_twitter_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basic_seo_helper_twitter_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basic_seo_helper_twitter_title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basic_seo_helper_twitter_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basic_seo_helper_twitter_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basic_seo_helper_twitter_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basic_seo_helper_twitter_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basic_seo_helper_schema_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basic_seo_helper_schema_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basic_seo_helper_schema_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basic_seo_helper_schema_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_basic_seo_helper_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_basic_seo_helper_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_basic_seo_helper_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_basic_seo_helper_image' ) );

