<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('es_repo_url');
delete_site_option('es_repo_url');
delete_option('es_privateKey');
delete_site_option('es_privateKey');
delete_option('es_appID');
delete_site_option('es_appID');
delete_option('es_guest_option');
delete_site_option('es_guest_option');
delete_option('es_guest_id');
delete_site_option('es_guest_id');
delete_option('es_auth_key');
delete_site_option('es_auth_key');
delete_option('es_repo_host');
delete_site_option('es_repo_host');
delete_option('es_publicKey');
delete_site_option('es_publicKey');
delete_option('es_repo_public_key');
delete_site_option('es_repo_public_key');
delete_option('es_repo_port');
delete_site_option('es_repo_port');
delete_option('es_repo_clientPort');
delete_site_option('es_repo_clientPort');
delete_option('es_repo_domain');
delete_site_option('es_repo_domain');
delete_option('es_repo_authenticationwebservice_wsdl');
delete_site_option('es_repo_authenticationwebservice_wsdl');
delete_option('es_repo_usagewebservice_wsdl');
delete_site_option('es_repo_usagewebservice_wsdl');
delete_option('es_repo_protocol');
delete_site_option('es_repo_protocol');
delete_option('es_repo_version');
delete_site_option('es_repo_version');
delete_option('es_auth_userid');
delete_site_option('es_auth_userid');
delete_option('es_auth_lastname');
delete_site_option('es_auth_lastname');
delete_option('es_auth_firstname');
delete_site_option('es_auth_firstname');
delete_option('es_auth_mail');
delete_site_option('es_auth_mail');
delete_option('es_auth_affiliation');
delete_site_option('es_auth_affiliation');
delete_option('es_auth_affiliation_name');
delete_site_option('es_auth_affiliation_name');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'es_repo_ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'es_repo_ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'es_repo_ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'es_repo_ticket' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'es_repo_domain' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'es_repo_domain' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'es_repo_domain' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'es_repo_domain' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'es_plugin_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'es_plugin_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'es_plugin_url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'es_plugin_url' ) );

