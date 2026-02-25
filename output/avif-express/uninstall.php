<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avifautoconvstatus');
delete_site_option('avifautoconvstatus');
delete_option('avifoperationmode');
delete_site_option('avifoperationmode');
delete_option('avifimagequality');
delete_site_option('avifimagequality');
delete_option('avifcompressionspeed');
delete_site_option('avifcompressionspeed');
delete_option('avifconversionengine');
delete_site_option('avifconversionengine');
delete_option('avifontheflyavif');
delete_site_option('avifontheflyavif');
delete_option('avifenablelogging');
delete_site_option('avifenablelogging');
delete_option('avifapikey');
delete_site_option('avifapikey');
delete_option('aviffallbackmode');
delete_site_option('aviffallbackmode');
delete_option('aviflazyload');
delete_site_option('aviflazyload');
delete_option('aviflazyloadrootmargin');
delete_site_option('aviflazyloadrootmargin');
delete_option('aviflazyloadjsthreshold');
delete_site_option('aviflazyloadjsthreshold');
delete_option('aviflazyloadbackground');
delete_site_option('aviflazyloadbackground');
delete_option('avifbackgroundConv');
delete_site_option('avifbackgroundConv');
delete_option('avifbackgroundevents');
delete_site_option('avifbackgroundevents');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('avife_auto_convert');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'avifexpressconverted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'avifexpressconverted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'avifexpressconverted' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'avifexpressconverted' ) );

