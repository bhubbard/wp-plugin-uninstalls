<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('yametrika-counter');
delete_site_option('yametrika-counter');
delete_option('yandex-metrika');
delete_site_option('yandex-metrika');
delete_option('wt_yandex_metrika');
delete_site_option('wt_yandex_metrika');
delete_option('vdz_yandex_metrika_code');
delete_site_option('vdz_yandex_metrika_code');
delete_option('yam_messages');
delete_site_option('yam_messages');
delete_option('yam_options');
delete_site_option('yam_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ym_ec_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ym_ec_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ym_ec_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ym_ec_sent' ) );

