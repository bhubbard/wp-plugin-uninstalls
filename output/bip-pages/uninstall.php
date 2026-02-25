<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bip_pages_main_page_id');
delete_site_option('bip_pages_main_page_id');
delete_option('bip_pages_instruction_id');
delete_site_option('bip_pages_instruction_id');
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('widget_bip-logo');
delete_site_option('widget_bip-logo');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');
delete_option('bip_pages_org_name');
delete_site_option('bip_pages_org_name');
delete_option('bip_pages_address');
delete_site_option('bip_pages_address');
delete_option('bip_pages_editor');
delete_site_option('bip_pages_editor');
delete_option('bip_pages_email');
delete_site_option('bip_pages_email');
delete_option('bip_pages_phone');
delete_site_option('bip_pages_phone');
delete_option('bip-pages-edit-access-role');
delete_site_option('bip-pages-edit-access-role');
delete_option('bip-pages-publish-access-role');
delete_site_option('bip-pages-publish-access-role');
delete_option('bip-pages-delete-access-role');
delete_site_option('bip-pages-delete-access-role');

// Delete Transients
delete_transient('bip-pages-activation-msg');
delete_site_transient('bip-pages-activation-msg');
delete_transient('bip-pages-deactivation-msg');
delete_site_transient('bip-pages-deactivation-msg');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_bip_prepared_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_bip_prepared_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_bip_prepared_by' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_bip_prepared_by' ) );

