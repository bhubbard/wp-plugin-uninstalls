<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jp_config');
delete_site_option('jp_config');
delete_option('jp_header_loc');
delete_site_option('jp_header_loc');
delete_option('jp_custom_name');
delete_site_option('jp_custom_name');
delete_option('jp_custom_header');
delete_site_option('jp_custom_header');
delete_option('jp_privacy');
delete_site_option('jp_privacy');
delete_option('jp_privacyp');
delete_site_option('jp_privacyp');
delete_option('jp_privacyl');
delete_site_option('jp_privacyl');
delete_option('jp_comments');
delete_site_option('jp_comments');
delete_option('jp_cat');
delete_site_option('jp_cat');
delete_option('jp_tag');
delete_site_option('jp_tag');
delete_option('jp_more');
delete_site_option('jp_more');
delete_option('jp_dbversion');
delete_site_option('jp_dbversion');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_jp_xpto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_jp_xpto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_jp_xpto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_jp_xpto' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_jp_xpid_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_jp_xpid_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_jp_xpid_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_jp_xpid_%' ) );

