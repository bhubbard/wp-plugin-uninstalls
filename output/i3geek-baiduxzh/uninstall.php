<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('I3GEEK_XZH_SETTING');
delete_site_option('I3GEEK_XZH_SETTING');
delete_option('I3GEEK_XZH_NOTICE');
delete_site_option('I3GEEK_XZH_NOTICE');
delete_option('I3GEEK_XZH_SUBMITNUMBER');
delete_site_option('I3GEEK_XZH_SUBMITNUMBER');

// Delete Transients
delete_transient('I3GEEK_XZH_MSG_STATUS');
delete_site_transient('I3GEEK_XZH_MSG_STATUS');
delete_transient('I3GEEK_XZH_MSG_CONTENT');
delete_site_transient('I3GEEK_XZH_MSG_CONTENT');
delete_transient('I3GEEK_XZH_LOG_WRITABLE');
delete_site_transient('I3GEEK_XZH_LOG_WRITABLE');
delete_transient('I3GEEK_XZH_UPDATE_FLAG');
delete_site_transient('I3GEEK_XZH_UPDATE_FLAG');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'i3geek_xzh_submit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'i3geek_xzh_submit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'i3geek_xzh_submit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'i3geek_xzh_submit' ) );

