<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sociable_awesmapikey');
delete_site_option('sociable_awesmapikey');
delete_option('sociable_active_sites');
delete_site_option('sociable_active_sites');
delete_option('sociable_imagedir');
delete_site_option('sociable_imagedir');
delete_option('sociable_tagline');
delete_site_option('sociable_tagline');
delete_option('sociable_awesmenable');
delete_site_option('sociable_awesmenable');
delete_option('sociable_useiframe');
delete_site_option('sociable_useiframe');
delete_option('sociable_iframewidth');
delete_site_option('sociable_iframewidth');
delete_option('sociable_iframeheight');
delete_site_option('sociable_iframeheight');
delete_option('sociable_usetargetblank');
delete_site_option('sociable_usetargetblank');
delete_option('sociable_usetextlinks');
delete_site_option('sociable_usetextlinks');
delete_option('sociable_disablesprite');
delete_site_option('sociable_disablesprite');
delete_option('sociable_disablealpha');
delete_site_option('sociable_disablealpha');
delete_option('sociable_conditionals');
delete_site_option('sociable_conditionals');
delete_option('sociable_usecss');
delete_site_option('sociable_usecss');
delete_option('sociable_disablewidget');
delete_site_option('sociable_disablewidget');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sociable_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sociableoff' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sociableoff' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sociableoff' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sociableoff' ) );

