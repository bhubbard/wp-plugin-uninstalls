<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pgsfw_layout');
delete_site_option('pgsfw_layout');
delete_option('pgsfw_lstyle');
delete_site_option('pgsfw_lstyle');
delete_option('pgsfw_msadisable');
delete_site_option('pgsfw_msadisable');
delete_option('pgsfw_tadisable');
delete_site_option('pgsfw_tadisable');
delete_option('pgsfw_dgimg');
delete_site_option('pgsfw_dgimg');
delete_option('pgsfw_dgvgh');
delete_site_option('pgsfw_dgvgh');
delete_option('pgsfw_salp');
delete_site_option('pgsfw_salp');
delete_option('pgsfw_sarp');
delete_site_option('pgsfw_sarp');
delete_option('arbgcolor');
delete_site_option('arbgcolor');
delete_option('aricolor');
delete_site_option('aricolor');
delete_option('harbgcolor');
delete_site_option('harbgcolor');
delete_option('haricolor');
delete_site_option('haricolor');
delete_option('mslidersize');
delete_site_option('mslidersize');
delete_option('tarrsize');
delete_site_option('tarrsize');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pgsw_youtube_url_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pgsw_youtube_url_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pgsw_youtube_url_field' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pgsw_youtube_url_field' ) );

