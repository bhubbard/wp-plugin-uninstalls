<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faciro_404_monitor_enabled');
delete_site_option('faciro_404_monitor_enabled');
delete_option('faciro_rename_on_upload');
delete_site_option('faciro_rename_on_upload');
delete_option('faciro_create_thumbs');
delete_site_option('faciro_create_thumbs');
delete_option('faciro_enable_optimize');
delete_site_option('faciro_enable_optimize');
delete_option('faciro_enable_webp');
delete_site_option('faciro_enable_webp');
delete_option('faciro_remove_metadata');
delete_site_option('faciro_remove_metadata');
delete_option('faciro_hide_wp_version');
delete_site_option('faciro_hide_wp_version');
delete_option('faciro_disable_heartbeat');
delete_site_option('faciro_disable_heartbeat');
delete_option('faciro_disable_dashicons_front');
delete_site_option('faciro_disable_dashicons_front');
delete_option('faciro_remove_shortlink');
delete_site_option('faciro_remove_shortlink');
delete_option('faciro_disable_embed');
delete_site_option('faciro_disable_embed');
delete_option('faciro_disable_xmlrpc');
delete_site_option('faciro_disable_xmlrpc');
delete_option('faciro_remove_rsd');
delete_site_option('faciro_remove_rsd');
delete_option('faciro_remove_fse_global_styles');
delete_site_option('faciro_remove_fse_global_styles');
delete_option('faciro_remove_emojis');
delete_site_option('faciro_remove_emojis');
delete_option('faciro_remove_header_info');
delete_site_option('faciro_remove_header_info');
delete_option('faciro_strip_version_assets');
delete_site_option('faciro_strip_version_assets');
delete_option('faciro_hide_login_errors');
delete_site_option('faciro_hide_login_errors');
delete_option('faciro_disable_feeds');
delete_site_option('faciro_disable_feeds');
delete_option('faciro_hide_admin_bar');
delete_site_option('faciro_hide_admin_bar');
delete_option('faciro_prevent_multisite_signup');
delete_site_option('faciro_prevent_multisite_signup');
delete_option('faciro_remove_x_pingback');
delete_site_option('faciro_remove_x_pingback');
delete_option('faciro_disable_rankmath_sitemap_cache');
delete_site_option('faciro_disable_rankmath_sitemap_cache');
delete_option('faciro_sec_uploads_htaccess');
delete_site_option('faciro_sec_uploads_htaccess');
delete_option('faciro_sec_wpcontent_htaccess');
delete_site_option('faciro_sec_wpcontent_htaccess');
delete_option('faciro_sec_wpincludes_htaccess');
delete_site_option('faciro_sec_wpincludes_htaccess');
delete_option('faciro_sec_remove_readme');
delete_site_option('faciro_sec_remove_readme');
delete_option('faciro_seo_alt_title_images');
delete_site_option('faciro_seo_alt_title_images');
delete_option('faciro_seo_title_links');
delete_site_option('faciro_seo_title_links');
delete_option('faciro_seo_noreferrer_external');
delete_site_option('faciro_seo_noreferrer_external');
delete_option('faciro_seo_nofollow_external');
delete_site_option('faciro_seo_nofollow_external');
delete_option('faciro_seo_external_new_tabs');
delete_site_option('faciro_seo_external_new_tabs');
delete_option('faciro_ia_track_enabled');
delete_site_option('faciro_ia_track_enabled');
delete_option('faciro_sitemap_enabled');
delete_site_option('faciro_sitemap_enabled');
delete_option('faciro_sitemap_posts');
delete_site_option('faciro_sitemap_posts');
delete_option('faciro_sitemap_pages');
delete_site_option('faciro_sitemap_pages');
delete_option('faciro_sitemap_authors');
delete_site_option('faciro_sitemap_authors');
delete_option('faciro_sitemap_news');
delete_site_option('faciro_sitemap_news');
delete_option('faciro_fill_image_title');
delete_site_option('faciro_fill_image_title');
delete_option('faciro_fill_image_description');
delete_site_option('faciro_fill_image_description');
delete_option('faciro_fill_image_caption');
delete_site_option('faciro_fill_image_caption');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'faciro_sitemap_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

// Delete Transients
delete_transient('faciro_module_errors');
delete_site_transient('faciro_module_errors');
delete_transient('faciro_broken_links_posts');
delete_site_transient('faciro_broken_links_posts');
delete_transient('faciro_broken_links_cache');
delete_site_transient('faciro_broken_links_cache');
delete_transient('faciro_remove_all_broken_links');
delete_site_transient('faciro_remove_all_broken_links');
delete_transient('faciro_last_broken_links_list');
delete_site_transient('faciro_last_broken_links_list');
delete_transient('faciro_pages_without_internal_links_posts');
delete_site_transient('faciro_pages_without_internal_links_posts');
delete_transient('faciro_pages_without_external_links_posts');
delete_site_transient('faciro_pages_without_external_links_posts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

