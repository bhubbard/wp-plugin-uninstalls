<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spwdprot_password_hash');
delete_site_option('spwdprot_password_hash');
delete_option('spwdprot_plugin_enabled');
delete_site_option('spwdprot_plugin_enabled');
delete_option('spwdprot_impressum_page');
delete_site_option('spwdprot_impressum_page');
delete_option('spwdprot_privacy_page');
delete_site_option('spwdprot_privacy_page');
delete_option('spwdprot_logo_url');
delete_site_option('spwdprot_logo_url');
delete_option('spwdprot_logo_shape');
delete_site_option('spwdprot_logo_shape');
delete_option('spwdprot_page_title');
delete_site_option('spwdprot_page_title');
delete_option('spwdprot_login_text');
delete_site_option('spwdprot_login_text');
delete_option('spwdprot_background_color');
delete_site_option('spwdprot_background_color');
delete_option('spwdprot_button_color');
delete_site_option('spwdprot_button_color');
delete_option('spwdprot_button_text_color');
delete_site_option('spwdprot_button_text_color');
delete_option('spwdprot_link_color');
delete_site_option('spwdprot_link_color');
delete_option('spwdprot_show_admin_login');
delete_site_option('spwdprot_show_admin_login');
delete_option('spwdprot_show_legal_links');
delete_site_option('spwdprot_show_legal_links');

// Delete Transients
delete_transient('spwdprot_password_updated');
delete_site_transient('spwdprot_password_updated');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'spwdprot_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'spwdprot_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'spwdprot_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'spwdprot_last_login' ) );

