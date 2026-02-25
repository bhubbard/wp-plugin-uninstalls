<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maxbuttons_borderbox');
delete_site_option('maxbuttons_borderbox');
delete_option('maxbuttons_hidedescription');
delete_site_option('maxbuttons_hidedescription');
delete_option('maxbuttons_autoresponsive');
delete_site_option('maxbuttons_autoresponsive');
delete_option('maxbuttons_autor_font');
delete_site_option('maxbuttons_autor_font');
delete_option('maxbuttons_autor_width');
delete_site_option('maxbuttons_autor_width');
delete_option('maxbuttons_pro_license_expires');
delete_site_option('maxbuttons_pro_license_expires');
delete_option('maxbuttons_pro_license_activated');
delete_site_option('maxbuttons_pro_license_activated');
delete_option('MBFREE_CREATED');
delete_site_option('MBFREE_CREATED');
delete_option('MBFREE_HOMEURL');
delete_site_option('MBFREE_HOMEURL');
delete_option('maxbuttons_protocol');
delete_site_option('maxbuttons_protocol');
delete_option('maxbuttons_forcefa');
delete_site_option('maxbuttons_forcefa');
delete_option('maxbuttons_minify');
delete_site_option('maxbuttons_minify');
delete_option('maxbuttons_user_level');
delete_site_option('maxbuttons_user_level');
delete_option('maxbuttons_noshowtinymce');
delete_site_option('maxbuttons_noshowtinymce');
delete_option('maxbuttons_usecssfile');
delete_site_option('maxbuttons_usecssfile');
delete_option('maxbuttons_pro_license_key');
delete_site_option('maxbuttons_pro_license_key');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'maxbuttons_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'maxbuttons_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'maxbuttons_review_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'maxbuttons_review_notice' ) );

