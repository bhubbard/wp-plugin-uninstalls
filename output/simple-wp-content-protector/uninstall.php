<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_content_protector');
delete_site_option('simple_content_protector');
delete_option('scp_disable_for_logged_in');
delete_site_option('scp_disable_for_logged_in');
delete_option('scp_protect_images');
delete_site_option('scp_protect_images');
delete_option('scp_protect_text_selection');
delete_site_option('scp_protect_text_selection');
delete_option('scp_protect_print');
delete_site_option('scp_protect_print');
delete_option('scp_protect_screenshot');
delete_site_option('scp_protect_screenshot');
delete_option('scp_protect_dev_tools');
delete_site_option('scp_protect_dev_tools');
delete_option('scp_protect_right_click');
delete_site_option('scp_protect_right_click');
delete_option('scp_enable_role_restriction');
delete_site_option('scp_enable_role_restriction');
delete_option('scp_allowed_roles');
delete_site_option('scp_allowed_roles');
delete_option('scp_excluded_pages');
delete_site_option('scp_excluded_pages');
delete_option('scp_alert_text');
delete_site_option('scp_alert_text');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scp_disable_protection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scp_disable_protection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scp_disable_protection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scp_disable_protection' ) );

