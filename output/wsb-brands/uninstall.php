<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_wsb_brands_admin_tab_general_labels');
delete_site_option('wc_wsb_brands_admin_tab_general_labels');
delete_option('wc_wsb_brands_admin_tab_show_in_cart');
delete_site_option('wc_wsb_brands_admin_tab_show_in_cart');
delete_option('wc_wsb_brands_admin_tab_single_position');
delete_site_option('wc_wsb_brands_admin_tab_single_position');
delete_option('wc_wsb_brands_admin_tab_loop_position');
delete_site_option('wc_wsb_brands_admin_tab_loop_position');
delete_option('wsb_brands_admin_tab_show_single_product');
delete_site_option('wsb_brands_admin_tab_show_single_product');
delete_option('wc_wsb_brands_admin_tab_show_label_single_product');
delete_site_option('wc_wsb_brands_admin_tab_show_label_single_product');
delete_option('wsb_brands_logo_height_single_product');
delete_site_option('wsb_brands_logo_height_single_product');
delete_option('wsb_brands_admin_tab_show_product_loop');
delete_site_option('wsb_brands_admin_tab_show_product_loop');
delete_option('wc_wsb_brands_admin_tab_show_label_loop');
delete_site_option('wc_wsb_brands_admin_tab_show_label_loop');
delete_option('wsb_brands_logo_height_archive');
delete_site_option('wsb_brands_logo_height_archive');
delete_option('wc_wsb_brands_admin_tab_archive_position');
delete_site_option('wc_wsb_brands_admin_tab_archive_position');
delete_option('wc_wsb_brands_admin_tab_show_logo_archive');
delete_site_option('wc_wsb_brands_admin_tab_show_logo_archive');
delete_option('wc_wsb_brands_admin_tab_show_title_archive');
delete_site_option('wc_wsb_brands_admin_tab_show_title_archive');
delete_option('wc_wsb_brands_brand_archive_bgcolor');
delete_site_option('wc_wsb_brands_brand_archive_bgcolor');
delete_option('wc_wsb_brands_brand_archive_border_thickness');
delete_site_option('wc_wsb_brands_brand_archive_border_thickness');
delete_option('wc_wsb_brands_brand_archive_border_color');
delete_site_option('wc_wsb_brands_brand_archive_border_color');
delete_option('wc_wsb_brands_admin_tab_single_product_tab');
delete_site_option('wc_wsb_brands_admin_tab_single_product_tab');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'url' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'logo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'logo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'logo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'logo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wsb_brands' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wsb_brands' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wsb_brands' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wsb_brands' ) );

