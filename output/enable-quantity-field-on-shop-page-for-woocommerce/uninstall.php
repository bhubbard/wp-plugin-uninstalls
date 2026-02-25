<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('istwqfs_qty_field_enable');
delete_site_option('istwqfs_qty_field_enable');
delete_option('istwqfs_qty_label_enable');
delete_site_option('istwqfs_qty_label_enable');
delete_option('istwqfs_quantity_label');
delete_site_option('istwqfs_quantity_label');
delete_option('istwqfs_qty_label_font_color');
delete_site_option('istwqfs_qty_label_font_color');
delete_option('istwqfs_qty_label_font_weight');
delete_site_option('istwqfs_qty_label_font_weight');
delete_option('istwqfs_qty_label_font_size');
delete_site_option('istwqfs_qty_label_font_size');
delete_option('istwqfs_product_added_message');
delete_site_option('istwqfs_product_added_message');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%istwqfserror', '_site_transient_%istwqfserror' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

