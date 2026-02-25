<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('p_cgal1ery_count_uploads');
delete_site_option('p_cgal1ery_count_uploads');
delete_option('p_cgal1ery_reg_code');
delete_site_option('p_cgal1ery_reg_code');
delete_option('p_c1_k_g_r_9');
delete_site_option('p_c1_k_g_r_9');
delete_option('p_cgal1ery_uploadscounter_reminder');
delete_site_option('p_cgal1ery_uploadscounter_reminder');
delete_option('p_cgal1ery_reminder_time');
delete_site_option('p_cgal1ery_reminder_time');
delete_option('p_cgal1ery_count_users');
delete_site_option('p_cgal1ery_count_users');
delete_option('p_cgal1ery_db_version');
delete_site_option('p_cgal1ery_db_version');
delete_option('p_cgal1ery_install_date');
delete_site_option('p_cgal1ery_install_date');
delete_option('CgEntriesOwnSlugName');
delete_site_option('CgEntriesOwnSlugName');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'CgEntriesOwnSlugName%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('CgEntriesOwnSlugNameGalleries');
delete_site_option('CgEntriesOwnSlugNameGalleries');
delete_option('CgEntriesOwnSlugNameGalleriesUser');
delete_site_option('CgEntriesOwnSlugNameGalleriesUser');
delete_option('CgEntriesOwnSlugNameGalleriesNoVoting');
delete_site_option('CgEntriesOwnSlugNameGalleriesNoVoting');
delete_option('CgEntriesOwnSlugNameGalleriesWinner');
delete_site_option('CgEntriesOwnSlugNameGalleriesWinner');
delete_option('CgEntriesOwnSlugNameGalleriesEcommerce');
delete_site_option('CgEntriesOwnSlugNameGalleriesEcommerce');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nickname' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nickname' ) );

