<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lcp_enable_magic_copy_btn_specific_section');
delete_site_option('lcp_enable_magic_copy_btn_specific_section');
delete_option('lcp_enable_copy_paste_btn');
delete_site_option('lcp_enable_copy_paste_btn');
delete_option('lcp_enable_magic_copy_btn');
delete_site_option('lcp_enable_magic_copy_btn');
delete_option('bdt_enable_duplicator');
delete_site_option('bdt_enable_duplicator');
delete_option('element_pack_other_settings');
delete_site_option('element_pack_other_settings');
delete_option('lcp_enable_magic_copy_btn_login_user');
delete_site_option('lcp_enable_magic_copy_btn_login_user');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_template_type' ) );

