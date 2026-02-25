<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpc_bms_nb_bmsearch');
delete_site_option('cpc_bms_nb_bmsearch');
delete_option('cpc_bms_admin_options');
delete_site_option('cpc_bms_admin_options');
delete_option('cpc_bms_admin_text_mod');
delete_site_option('cpc_bms_admin_text_mod');
delete_option('cpc_bms_advanced_admin_options');
delete_site_option('cpc_bms_advanced_admin_options');
delete_option('sidebars_widgets');
delete_site_option('sidebars_widgets');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );

