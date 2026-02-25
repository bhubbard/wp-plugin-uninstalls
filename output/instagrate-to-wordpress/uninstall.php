<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('itw_username');
delete_site_option('itw_username');
delete_option('itw_userid');
delete_site_option('itw_userid');
delete_option('itw_manuallstid');
delete_site_option('itw_manuallstid');
delete_option('itw_accesstoken');
delete_site_option('itw_accesstoken');
delete_option('itw_accesstoken_expires');
delete_site_option('itw_accesstoken_expires');
delete_option('itw_version');
delete_site_option('itw_version');
delete_option('itw_imagelink');
delete_site_option('itw_imagelink');
delete_option('itw_debugmode');
delete_site_option('itw_debugmode');
delete_option('itw_imagesave');
delete_site_option('itw_imagesave');
delete_option('itw_imagefeat');
delete_site_option('itw_imagefeat');
delete_option('itw_post_date');
delete_site_option('itw_post_date');
delete_option('itw_postformat');
delete_site_option('itw_postformat');
delete_option('itw_poststatus');
delete_site_option('itw_poststatus');
delete_option('itw_posttype');
delete_site_option('itw_posttype');
delete_option('itw_defaulttitle');
delete_site_option('itw_defaulttitle');
delete_option('itw_ishome');
delete_site_option('itw_ishome');
delete_option('itw_last_run');
delete_site_option('itw_last_run');
delete_option('itw_configured');
delete_site_option('itw_configured');
delete_option('itw_imagesize');
delete_site_option('itw_imagesize');
delete_option('itw_imageclass');
delete_site_option('itw_imageclass');
delete_option('itw_postcats');
delete_site_option('itw_postcats');
delete_option('itw_postauthor');
delete_site_option('itw_postauthor');
delete_option('itw_customtitle');
delete_site_option('itw_customtitle');
delete_option('itw_customtext');
delete_site_option('itw_customtext');
delete_option('itw_pluginlink');
delete_site_option('itw_pluginlink');

// Delete Transients
delete_transient('itw_posting');
delete_site_transient('itw_posting');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'instagrate_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'instagrate_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'instagrate_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'instagrate_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

