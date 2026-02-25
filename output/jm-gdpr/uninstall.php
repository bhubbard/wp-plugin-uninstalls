<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jmgdpr_show_cookie_message');
delete_site_option('jmgdpr_show_cookie_message');
delete_option('jmgdpr_cookie_message');
delete_site_option('jmgdpr_cookie_message');
delete_option('jmgdpr_cookie_link_text');
delete_site_option('jmgdpr_cookie_link_text');
delete_option('jmgdpr_cookie_link_href');
delete_site_option('jmgdpr_cookie_link_href');
delete_option('jmgdpr_cookie_ok_text');
delete_site_option('jmgdpr_cookie_ok_text');
delete_option('jmgdpr_privacy_checkbox_label');
delete_site_option('jmgdpr_privacy_checkbox_label');
delete_option('jmgdpr_privacy_policy_link');
delete_site_option('jmgdpr_privacy_policy_link');
delete_option('jmgdpr_show_privacy_checkbox');
delete_site_option('jmgdpr_show_privacy_checkbox');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'jmgdpr_privacy_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'jmgdpr_privacy_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'jmgdpr_privacy_policy' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'jmgdpr_privacy_policy' ) );

