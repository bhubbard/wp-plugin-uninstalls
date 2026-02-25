<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wonderplugin_slider_usepostsave');
delete_site_option('wonderplugin_slider_usepostsave');
delete_option('wonderplugin_slider_addextrabackslash');
delete_site_option('wonderplugin_slider_addextrabackslash');
delete_option('wonderplugin_slider_supportmultilingual');
delete_site_option('wonderplugin_slider_supportmultilingual');
delete_option('wonderplugin_slider_userrole');
delete_site_option('wonderplugin_slider_userrole');
delete_option('wonderplugin_slider_keepdata');
delete_site_option('wonderplugin_slider_keepdata');
delete_option('wonderplugin_slider_disableupdate');
delete_site_option('wonderplugin_slider_disableupdate');
delete_option('wonderplugin_slider_supportwidget');
delete_site_option('wonderplugin_slider_supportwidget');
delete_option('wonderplugin_slider_addjstofooter');
delete_site_option('wonderplugin_slider_addjstofooter');
delete_option('wonderplugin_slider_jsonstripcslash');
delete_site_option('wonderplugin_slider_jsonstripcslash');
delete_option('wonderplugin_slider_thumbnailsize');
delete_site_option('wonderplugin_slider_thumbnailsize');
delete_option('wonderplugin_slider_jetpackdisablelazyload');
delete_site_option('wonderplugin_slider_jetpackdisablelazyload');
delete_option('wonderplugin_slider_information');
delete_site_option('wonderplugin_slider_information');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'total_sales' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'total_sales' ) );

