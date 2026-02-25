<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jetpack_protect_active');
delete_site_option('jetpack_protect_active');
delete_option('jetpack_offline_mode');
delete_site_option('jetpack_offline_mode');
delete_option('wpcom_public_coming_soon');
delete_site_option('wpcom_public_coming_soon');
delete_option('woocommerce_catalog_columns');
delete_site_option('woocommerce_catalog_columns');
delete_option('wc_pwb_admin_tab_brands_in_loop');
delete_site_option('wc_pwb_admin_tab_brands_in_loop');
delete_option('wc_pwb_admin_tab_brands_in_loop_separator');
delete_site_option('wc_pwb_admin_tab_brands_in_loop_separator');
delete_option('wc_pwb_admin_tab_slug');
delete_site_option('wc_pwb_admin_tab_slug');
delete_option('old_wc_pwb_admin_tab_slug');
delete_site_option('old_wc_pwb_admin_tab_slug');
delete_option('wc_pwb_admin_tab_brand_logo_size');
delete_site_option('wc_pwb_admin_tab_brand_logo_size');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tax_meta_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wc_pwb_admin_tab_brand_single_position');
delete_site_option('wc_pwb_admin_tab_brand_single_position');
delete_option('wc_pwb_notice_plugin_review');
delete_site_option('wc_pwb_notice_plugin_review');
delete_option('wc_pwb_admin_tab_brand_desc');
delete_site_option('wc_pwb_admin_tab_brand_desc');
delete_option('wc_pwb_admin_tab_brand_single_product_tab');
delete_site_option('wc_pwb_admin_tab_brand_single_product_tab');
delete_option('wc_pwb_admin_tab_brands_in_single');
delete_site_option('wc_pwb_admin_tab_brands_in_single');
delete_option('wc_pwb_admin_tab_brand_single_label');
delete_site_option('wc_pwb_admin_tab_brand_single_label');
delete_option('wc_pwb_admin_tab_long_brand_desc');
delete_site_option('wc_pwb_admin_tab_long_brand_desc');
delete_option('wc_pwb_admin_tab_brand_banner');
delete_site_option('wc_pwb_admin_tab_brand_banner');
delete_option('wc_pwb_admin_tab_brands_page_id');
delete_site_option('wc_pwb_admin_tab_brands_page_id');
delete_option('woocommerce_hide_out_of_stock_items');
delete_site_option('woocommerce_hide_out_of_stock_items');
delete_option('pwb_activate_on');
delete_site_option('pwb_activate_on');
delete_option('wc_pwb_admin_tab_section_title');
delete_site_option('wc_pwb_admin_tab_section_title');
delete_option('wc_pwb_admin_tab_section_end');
delete_site_option('wc_pwb_admin_tab_section_end');

// Delete Transients
delete_transient('jetpack_is_single_user');
delete_site_transient('jetpack_is_single_user');
delete_transient('quadlayers_news_feed');
delete_site_transient('quadlayers_news_feed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_pwb_az_listing_cache_%', '_site_transient_pwb_az_listing_cache_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_ql_plugin_feedback_%', '_site_transient_ql_plugin_feedback_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pwb_brand_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pwb_brand_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pwb_brand_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pwb_brand_image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pwb_brand_banner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pwb_brand_banner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pwb_brand_banner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pwb_brand_banner' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pwb_brand_banner_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pwb_brand_banner_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pwb_brand_banner_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pwb_brand_banner_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pwb_long_brand_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pwb_long_brand_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pwb_long_brand_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pwb_long_brand_desc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pwb_coupon_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pwb_coupon_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pwb_coupon_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pwb_coupon_restriction' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_pwb_coupon_exclude_brands' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_pwb_coupon_exclude_brands' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_pwb_coupon_exclude_brands' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_pwb_coupon_exclude_brands' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pwb_featured_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pwb_featured_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pwb_featured_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pwb_featured_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pwb_brand_banner_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pwb_brand_banner_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pwb_brand_banner_description' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pwb_brand_banner_description' ) );

