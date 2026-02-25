<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wsv_show_vari_on_shop_cat');
delete_site_option('wsv_show_vari_on_shop_cat');
delete_option('wsv_show_vari_on_shortcode');
delete_site_option('wsv_show_vari_on_shortcode');
delete_option('wsv_hide_parent_product_variable');
delete_site_option('wsv_hide_parent_product_variable');
delete_option('wsv_excludes_category');
delete_site_option('wsv_excludes_category');
delete_option('wsv_excludes_attributes');
delete_site_option('wsv_excludes_attributes');
delete_option('wsv_show_vari_keep_first');
delete_site_option('wsv_show_vari_keep_first');
delete_option('wsv_show_vari_lh_price');
delete_site_option('wsv_show_vari_lh_price');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wsv_custom_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wsv_custom_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wsv_custom_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wsv_custom_name' ) );

