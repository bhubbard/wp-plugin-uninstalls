<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('technoUTM_install_analytics');
delete_site_option('technoUTM_install_analytics');
delete_option('technoUTM_analytics_id');
delete_site_option('technoUTM_analytics_id');
delete_option('technoUTM_analytics_position');
delete_site_option('technoUTM_analytics_position');
delete_option('technoUTM_enable_adminbar');
delete_site_option('technoUTM_enable_adminbar');
delete_option('technoUTM_active_posts');
delete_site_option('technoUTM_active_posts');
delete_option('technoUTM_default_utm_source');
delete_site_option('technoUTM_default_utm_source');
delete_option('technoUTM_default_utm_medium');
delete_site_option('technoUTM_default_utm_medium');
delete_option('technoUTM_default_utm_campaign');
delete_site_option('technoUTM_default_utm_campaign');
delete_option('technoUTM_default_utm_term');
delete_site_option('technoUTM_default_utm_term');
delete_option('technoUTM_default_utm_content');
delete_site_option('technoUTM_default_utm_content');
delete_option('technoUTM_active_pages');
delete_site_option('technoUTM_active_pages');
delete_option('technoUTM_item_id');
delete_site_option('technoUTM_item_id');
delete_option('technoUTM_item_checked');
delete_site_option('technoUTM_item_checked');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_techno_utm_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_techno_utm_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_techno_utm_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_techno_utm_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_techno_utm_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_techno_utm_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_techno_utm_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_techno_utm_source' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_techno_utm_medium' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_techno_utm_medium' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_techno_utm_medium' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_techno_utm_medium' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_techno_utm_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_techno_utm_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_techno_utm_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_techno_utm_campaign' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_techno_utm_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_techno_utm_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_techno_utm_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_techno_utm_term' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_techno_utm_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_techno_utm_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_techno_utm_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_techno_utm_content' ) );

