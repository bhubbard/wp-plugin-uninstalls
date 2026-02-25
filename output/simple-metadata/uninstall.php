<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smd_locations');
delete_site_option('smd_locations');
delete_option('smd_net_locations');
delete_site_option('smd_net_locations');
delete_option('smd_website_blog_type');
delete_site_option('smd_website_blog_type');
delete_option('smd_hide_metadata_dates');
delete_site_option('smd_hide_metadata_dates');
delete_option('smd_disable_frontmatter_type');
delete_site_option('smd_disable_frontmatter_type');
delete_option('smd_disable_backmatter_type');
delete_site_option('smd_disable_backmatter_type');
delete_option('smd_organization_logo_image_id');
delete_site_option('smd_organization_logo_image_id');
delete_option('smd_organization_name');
delete_site_option('smd_organization_name');
delete_option('_ext_source_id');
delete_site_option('_ext_source_id');
delete_option('wpseo_titles');
delete_site_option('wpseo_titles');
delete_option('autodescription-site-settings');
delete_site_option('autodescription-site-settings');
delete_option('smd_logo_image_id');
delete_site_option('smd_logo_image_id');
delete_option('smdre_is_translated_from');
delete_site_option('smdre_is_translated_from');
delete_option('smd_net_sites_type');
delete_site_option('smd_net_sites_type');
delete_option('smd_net_hide_metadata_dates');
delete_site_option('smd_net_hide_metadata_dates');
delete_option('smde_locations');
delete_site_option('smde_locations');
delete_option('smdlc_locations');
delete_site_option('smdlc_locations');
delete_option('smdan_locations');
delete_site_option('smdan_locations');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smd_googleImage_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smd_googleImage_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smd_googleImage_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smd_googleImage_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smd_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smd_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smd_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smd_page_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smd_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smd_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smd_post_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smd_post_type' ) );

