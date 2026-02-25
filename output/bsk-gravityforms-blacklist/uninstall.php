<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bsk_gfbl_db_ver_');
delete_site_option('_bsk_gfbl_db_ver_');
delete_option('_bsk_gfbl_db_upgrading_');
delete_site_option('_bsk_gfbl_db_upgrading_');
delete_option('_bsk_gfblcv_free_to_pro_done_');
delete_site_option('_bsk_gfblcv_free_to_pro_done_');
delete_option('_bsk_gfbl_integrate_cf7_blacklist_done_');
delete_site_option('_bsk_gfbl_integrate_cf7_blacklist_done_');
delete_option('_bsk_gfbl_cf7_blacklist_list_id_mapping_');
delete_site_option('_bsk_gfbl_cf7_blacklist_list_id_mapping_');
delete_option('_bsk_gfbl_integrate_cf7_blacklist_doing_');
delete_site_option('_bsk_gfbl_integrate_cf7_blacklist_doing_');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cf7_blacklist_form_list_data_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cf7_blacklist_form_list_data_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cf7_blacklist_form_list_data_' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cf7_blacklist_form_list_data_' ) );

