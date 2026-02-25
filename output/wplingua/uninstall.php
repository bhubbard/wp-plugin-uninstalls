<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wplng_custom_css');
delete_site_option('wplng_custom_css');
delete_option('wplng_excluded_url');
delete_site_option('wplng_excluded_url');
delete_option('wplng_excluded_selectors');
delete_site_option('wplng_excluded_selectors');
delete_option('wplng_request_free_key');
delete_site_option('wplng_request_free_key');
delete_option('wplng_api_key_data');
delete_site_option('wplng_api_key_data');
delete_option('wplng_api_key');
delete_site_option('wplng_api_key');
delete_option('wplng_website_language');
delete_site_option('wplng_website_language');
delete_option('wplng_target_languages');
delete_site_option('wplng_target_languages');
delete_option('wplng_flags_style');
delete_site_option('wplng_flags_style');
delete_option('wplng_sitemap_xml');
delete_site_option('wplng_sitemap_xml');
delete_option('wplng_hreflang');
delete_site_option('wplng_hreflang');
delete_option('wplng_translate_search');
delete_site_option('wplng_translate_search');
delete_option('wplng_sitemap_xsl_override');
delete_site_option('wplng_sitemap_xsl_override');
delete_option('wplng_load_in_progress');
delete_site_option('wplng_load_in_progress');
delete_option('wplng_browser_language_redirect');
delete_site_option('wplng_browser_language_redirect');
delete_option('wplng_website_flag');
delete_site_option('wplng_website_flag');
delete_option('wplng_insert');
delete_site_option('wplng_insert');
delete_option('wplng_theme');
delete_site_option('wplng_theme');
delete_option('wplng_style');
delete_site_option('wplng_style');
delete_option('wplng_name_format');
delete_site_option('wplng_name_format');
delete_option('wplng_dictionary_entries');
delete_site_option('wplng_dictionary_entries');
delete_option('wplng_link_media_entries');
delete_site_option('wplng_link_media_entries');
delete_option('wplng_api_overloaded');
delete_site_option('wplng_api_overloaded');
delete_option('wplng_hb_last_update');
delete_site_option('wplng_hb_last_update');
delete_option('wplng_version');
delete_site_option('wplng_version');

// Delete Transients
delete_transient('wplng_api_key_error');
delete_site_transient('wplng_api_key_error');
delete_transient('wplng_cached_translations');
delete_site_transient('wplng_cached_translations');
delete_transient('wplng_cached_slugs');
delete_site_transient('wplng_cached_slugs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_slug_translations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_slug_translations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_slug_translations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_slug_translations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_translation_translations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_translation_translations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_translation_translations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_translation_translations' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_slug_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_slug_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_slug_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_slug_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_slug_md5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_slug_md5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_slug_md5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_slug_md5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_slug_original_language_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_slug_original_language_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_slug_original_language_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_slug_original_language_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_translation_discovery_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_translation_discovery_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_translation_discovery_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_translation_discovery_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_translation_original_language_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_translation_original_language_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_translation_original_language_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_translation_original_language_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_translation_md5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_translation_md5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_translation_md5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_translation_md5' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wplng_translation_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wplng_translation_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wplng_translation_original' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wplng_translation_original' ) );

