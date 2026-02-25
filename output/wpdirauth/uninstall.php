<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dirAuthCookieMarker');
delete_site_option('dirAuthCookieMarker');
delete_option('dirAuthControllers');
delete_site_option('dirAuthControllers');
delete_option('dirAuthBaseDn');
delete_site_option('dirAuthBaseDn');
delete_option('dirAuthPreBindUser');
delete_site_option('dirAuthPreBindUser');
delete_option('dirAuthPreBindPassword');
delete_site_option('dirAuthPreBindPassword');
delete_option('dirAuthAccountSuffix');
delete_site_option('dirAuthAccountSuffix');
delete_option('dirAuthFilter');
delete_site_option('dirAuthFilter');
delete_option('dirAuthEnableSsl');
delete_site_option('dirAuthEnableSsl');
delete_option('dirAuthUseGroups');
delete_site_option('dirAuthUseGroups');
delete_option('dirAuthGroups');
delete_site_option('dirAuthGroups');
delete_option('dirAuthEnable');
delete_site_option('dirAuthEnable');
delete_option('dirAuthRequireSsl');
delete_site_option('dirAuthRequireSsl');
delete_option('dirAuthAutoRegister');
delete_site_option('dirAuthAutoRegister');
delete_option('dirAuthInstitution');
delete_site_option('dirAuthInstitution');
delete_option('dirAuthLoginScreenMsg');
delete_site_option('dirAuthLoginScreenMsg');
delete_option('dirAuthChangePassMsg');
delete_site_option('dirAuthChangePassMsg');
delete_option('dirAuthTOS');
delete_site_option('dirAuthTOS');
delete_option('dirAuthMarketingSSOID');
delete_site_option('dirAuthMarketingSSOID');
delete_option('dirAuthCookieExpire');
delete_site_option('dirAuthCookieExpire');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpDirAuthFlag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpDirAuthFlag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpDirAuthFlag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpDirAuthFlag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpDirAuthTOS' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpDirAuthTOS' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpDirAuthTOS' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpDirAuthTOS' ) );

