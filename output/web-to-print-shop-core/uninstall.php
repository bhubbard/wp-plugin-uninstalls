<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('w2pshop_do_activation_redirect');
delete_site_option('w2pshop_do_activation_redirect');
delete_option('w2pshop_data_presets_handler_db_version');
delete_site_option('w2pshop_data_presets_handler_db_version');
delete_option('w2pshop_saved_designs_rewrite_flushed');
delete_site_option('w2pshop_saved_designs_rewrite_flushed');
delete_option('w2pshop_saved_data_handler_db_version');
delete_site_option('w2pshop_saved_data_handler_db_version');
delete_option('w2pshop_settings');
delete_site_option('w2pshop_settings');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_w2pshop_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_w2pshop_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_w2pshop_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_w2pshop_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_udraw_apparel_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_udraw_apparel_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_udraw_apparel_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_udraw_apparel_product' ) );

