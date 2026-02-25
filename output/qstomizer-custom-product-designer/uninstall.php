<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qsmz_shop_url');
delete_site_option('qsmz_shop_url');
delete_option('qsmz_category_shop');
delete_site_option('qsmz_category_shop');
delete_option('qsmz_category_hide');
delete_site_option('qsmz_category_hide');
delete_option('qsmz_mostrar_img');
delete_site_option('qsmz_mostrar_img');
delete_option('qsmz_tamano_img_width');
delete_site_option('qsmz_tamano_img_width');
delete_option('qsmz_tamano_img_height');
delete_site_option('qsmz_tamano_img_height');
delete_option('qsmz_private_key');
delete_site_option('qsmz_private_key');
delete_option('qsmz_public_key');
delete_site_option('qsmz_public_key');
delete_option('qsmz_settings');
delete_site_option('qsmz_settings');
delete_option('qsmz_activacion_msg');
delete_site_option('qsmz_activacion_msg');
delete_option('qsmz_getCNX');
delete_site_option('qsmz_getCNX');
delete_option('qsmz_myplugin_options');
delete_site_option('qsmz_myplugin_options');
delete_option('qsmz_permitir_imagenes');
delete_site_option('qsmz_permitir_imagenes');
delete_option('qsmz_permitir_png');
delete_site_option('qsmz_permitir_png');
delete_option('qsmz_store_id');
delete_site_option('qsmz_store_id');
delete_option('qsmz_store_key');
delete_site_option('qsmz_store_key');
delete_option('qsmz_user_id');
delete_site_option('qsmz_user_id');
delete_option('qsmz_user_key');
delete_site_option('qsmz_user_key');
delete_option('qsmz_user_login');
delete_site_option('qsmz_user_login');
delete_option('qsmz_user_password');
delete_site_option('qsmz_user_password');
delete_option('qsmz_wp_key');
delete_site_option('qsmz_wp_key');
delete_option('qstomizer_license_key');
delete_site_option('qstomizer_license_key');
delete_option('qstomizer_license_status');
delete_site_option('qstomizer_license_status');
delete_option('qstomizer_version');
delete_site_option('qstomizer_version');
delete_option('qsmz_ignore_promo');
delete_site_option('qsmz_ignore_promo');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qsmz_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qsmz_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qsmz_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qsmz_product' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qsmz_img_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qsmz_img_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qsmz_img_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qsmz_img_front' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qsmz_img_back' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qsmz_img_back' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qsmz_img_back' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qsmz_img_back' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qsmz_mbe_costume' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qsmz_mbe_costume' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qsmz_mbe_costume' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qsmz_mbe_costume' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qsmz_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qsmz_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qsmz_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qsmz_order_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_qsmz_key_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_qsmz_key_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_qsmz_key_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_qsmz_key_order' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'qsmz_ignore_promo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'qsmz_ignore_promo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'qsmz_ignore_promo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'qsmz_ignore_promo' ) );

