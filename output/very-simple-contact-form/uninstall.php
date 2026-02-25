<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vscf-setting-1');
delete_site_option('vscf-setting-1');
delete_option('vscf-setting-22');
delete_site_option('vscf-setting-22');
delete_option('vscf-setting-28');
delete_site_option('vscf-setting-28');
delete_option('vscf-setting-3');
delete_site_option('vscf-setting-3');
delete_option('vscf-setting-35');
delete_site_option('vscf-setting-35');
delete_option('vscf-setting-15');
delete_site_option('vscf-setting-15');
delete_option('vscf-setting-2');
delete_site_option('vscf-setting-2');
delete_option('vscf-setting-27');
delete_site_option('vscf-setting-27');
delete_option('vscf-setting-32');
delete_site_option('vscf-setting-32');
delete_option('vscf-setting-33');
delete_site_option('vscf-setting-33');
delete_option('vscf-setting-19');
delete_site_option('vscf-setting-19');
delete_option('vscf-setting-21');
delete_site_option('vscf-setting-21');
delete_option('vscf-setting-34');
delete_site_option('vscf-setting-34');
delete_option('vscf-setting-29');
delete_site_option('vscf-setting-29');
delete_option('vscf-setting-30');
delete_site_option('vscf-setting-30');
delete_option('vscf-setting-25');
delete_site_option('vscf-setting-25');
delete_option('vscf-setting-38');
delete_site_option('vscf-setting-38');
delete_option('vscf-setting-36');
delete_site_option('vscf-setting-36');
delete_option('vscf-setting-39');
delete_site_option('vscf-setting-39');
delete_option('vscf-setting-40');
delete_site_option('vscf-setting-40');
delete_option('vscf-setting-23');
delete_site_option('vscf-setting-23');
delete_option('vscf-setting-24');
delete_site_option('vscf-setting-24');
delete_option('vscf-setting-4');
delete_site_option('vscf-setting-4');
delete_option('vscf-setting-5');
delete_site_option('vscf-setting-5');
delete_option('vscf-setting-6');
delete_site_option('vscf-setting-6');
delete_option('vscf-setting-7');
delete_site_option('vscf-setting-7');
delete_option('vscf-setting-9');
delete_site_option('vscf-setting-9');
delete_option('vscf-setting-18');
delete_site_option('vscf-setting-18');
delete_option('vscf-setting-10');
delete_site_option('vscf-setting-10');
delete_option('vscf-setting-11');
delete_site_option('vscf-setting-11');
delete_option('vscf-setting-13');
delete_site_option('vscf-setting-13');
delete_option('vscf-setting-20');
delete_site_option('vscf-setting-20');
delete_option('vscf-setting-26');
delete_site_option('vscf-setting-26');
delete_option('vscf-setting-12');
delete_site_option('vscf-setting-12');
delete_option('vscf-setting-8');
delete_site_option('vscf-setting-8');
delete_option('vscf-setting-37');
delete_site_option('vscf-setting-37');
delete_option('vscf-setting-31');
delete_site_option('vscf-setting-31');
delete_option('vscf-setting-14');
delete_site_option('vscf-setting-14');
delete_option('vscf-setting-16');
delete_site_option('vscf-setting-16');
delete_option('vscf-setting-17');
delete_site_option('vscf-setting-17');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'name_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'name_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'name_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'name_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'email_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'email_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'email_sub' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'email_sub' ) );

