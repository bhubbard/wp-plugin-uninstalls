<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('loginwiaz_cred_storage');
delete_site_option('loginwiaz_cred_storage');
delete_option('loginwiaz_disable_password_login');
delete_site_option('loginwiaz_disable_password_login');
delete_option('loginwiaz_redirect_url_value');
delete_site_option('loginwiaz_redirect_url_value');
delete_option('loginwiaz_client_id_value');
delete_site_option('loginwiaz_client_id_value');
delete_option('loginwiaz_client_secret_value');
delete_site_option('loginwiaz_client_secret_value');
delete_option('loginwiaz_tenant_id_value');
delete_site_option('loginwiaz_tenant_id_value');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

