<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ss4seo_custom_taxs');
delete_site_option('ss4seo_custom_taxs');
delete_option('wpseo_titles');
delete_site_option('wpseo_titles');
delete_option('rank-math-options-titles');
delete_site_option('rank-math-options-titles');
delete_option('wpseo');
delete_site_option('wpseo');
delete_option('rank_math_modules');
delete_site_option('rank_math_modules');
delete_option('rank-math-options-sitemap');
delete_site_option('rank-math-options-sitemap');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('carbon_custom_sidebars');
delete_site_option('carbon_custom_sidebars');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

