<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppc_cpt_checklist_data');
delete_site_option('ppc_cpt_checklist_data');
delete_option('ppc_post_types_to_display');
delete_site_option('ppc_post_types_to_display');
delete_option('ppc_error_level');
delete_site_option('ppc_error_level');
delete_option('ppc_checklist_data');
delete_site_option('ppc_checklist_data');
delete_option('_ppc_db_version');
delete_site_option('_ppc_db_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ppc_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ppc_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ppc_meta_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ppc_meta_key' ) );

