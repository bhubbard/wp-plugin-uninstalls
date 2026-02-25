<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cmt_ex_im_option');
delete_site_option('cmt_ex_im_option');
delete_option('wcie_wt_plugin_reviewed');
delete_site_option('wcie_wt_plugin_reviewed');
delete_option('wbte_sc_hidden_promotion_banners');
delete_site_option('wbte_sc_hidden_promotion_banners');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_settings' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('hw_shipment_tracking_importer_ftp');
delete_site_option('hw_shipment_tracking_importer_ftp');
delete_option('wt_post_comment_alter_id');
delete_site_option('wt_post_comment_alter_id');
delete_option('hw_prod_comment_csv_imp_exp_mapping');
delete_site_option('hw_prod_comment_csv_imp_exp_mapping');
delete_option('hw_prod_cmt_csv_imp_exp_mapping');
delete_site_option('hw_prod_cmt_csv_imp_exp_mapping');

// Clear Cron Jobs
wp_clear_scheduled_hook('hw_cmt_csv_im_ex_auto_export_products');
wp_clear_scheduled_hook('hw_cmt_csv_im_ex_auto_import_products');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rating' ) );

