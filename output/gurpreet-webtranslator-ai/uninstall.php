<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtai_api_key');
delete_site_option('wtai_api_key');
delete_option('wtai_default_language');
delete_site_option('wtai_default_language');
delete_option('wtai_post_status');
delete_site_option('wtai_post_status');
delete_option('wtai_post_keep_image');
delete_site_option('wtai_post_keep_image');
delete_option('wtai_post_slug_method');
delete_site_option('wtai_post_slug_method');
delete_option('wtai_post_tags_method');
delete_site_option('wtai_post_tags_method');
delete_option('wtai_post_custom_tags');
delete_site_option('wtai_post_custom_tags');
delete_option('wtai_post_author');
delete_site_option('wtai_post_author');
delete_option('wtai_page_status');
delete_site_option('wtai_page_status');
delete_option('wtai_page_keep_image');
delete_site_option('wtai_page_keep_image');
delete_option('wtai_page_slug_method');
delete_site_option('wtai_page_slug_method');
delete_option('wtai_page_author');
delete_site_option('wtai_page_author');
delete_option('wtai_prod_status');
delete_site_option('wtai_prod_status');
delete_option('wtai_prod_author');
delete_site_option('wtai_prod_author');
delete_option('wtai_prod_slug_method');
delete_site_option('wtai_prod_slug_method');
delete_option('wtai_prod_keep_image');
delete_site_option('wtai_prod_keep_image');
delete_option('wtai_prod_sku_method');
delete_site_option('wtai_prod_sku_method');
delete_option('wtai_prod_price_method');
delete_site_option('wtai_prod_price_method');
delete_option('wtai_prod_stock_method');
delete_site_option('wtai_prod_stock_method');
delete_option('wtai_prod_attr_method');
delete_site_option('wtai_prod_attr_method');
delete_option('wtai_prod_cat_method');
delete_site_option('wtai_prod_cat_method');
delete_option('wtai_prod_tags_method');
delete_site_option('wtai_prod_tags_method');
delete_option('wtai_prod_custom_tags');
delete_site_option('wtai_prod_custom_tags');
delete_option('wtai_prod_gallery_method');
delete_site_option('wtai_prod_gallery_method');
delete_option('wtai_prod_brand_method');
delete_site_option('wtai_prod_brand_method');
delete_option('wtai_prod_specific_brand');
delete_site_option('wtai_prod_specific_brand');
delete_option('wtai_prod_adv_dims');
delete_site_option('wtai_prod_adv_dims');
delete_option('wtai_prod_adv_tax');
delete_site_option('wtai_prod_adv_tax');
delete_option('wtai_prod_adv_ship');
delete_site_option('wtai_prod_adv_ship');
delete_option('wtai_prod_adv_files');
delete_site_option('wtai_prod_adv_files');
delete_option('wtai_usage_stats');
delete_site_option('wtai_usage_stats');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wtai_source_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wtai_source_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wtai_source_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wtai_source_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wtai_lang' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wtai_lang' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wtai_lang' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wtai_lang' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_sku' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_attributes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_image_gallery' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tax_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tax_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tax_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tax_status' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_tax_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_tax_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_tax_class' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_tax_class' ) );

