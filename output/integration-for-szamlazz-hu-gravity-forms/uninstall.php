<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_gf_szamlazz_pro_enabled');
delete_site_option('_gf_szamlazz_pro_enabled');
delete_option('_gf_szamlazz_pro_key');
delete_site_option('_gf_szamlazz_pro_key');
delete_option('_gf_szamlazz_pro_email');
delete_site_option('_gf_szamlazz_pro_email');
delete_option('_gf_szamlazz_error');
delete_site_option('_gf_szamlazz_error');
delete_option('_gf_szamlazz_cookie_name');
delete_site_option('_gf_szamlazz_cookie_name');

// Delete Transients
delete_transient('gf_szamlazz_mnb_arfolyam_kozep');
delete_site_transient('gf_szamlazz_mnb_arfolyam_kozep');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gf_szamlazz_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gf_szamlazz_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gf_szamlazz_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gf_szamlazz_admin_notices' ) );

