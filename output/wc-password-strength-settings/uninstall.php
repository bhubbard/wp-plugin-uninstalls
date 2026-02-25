<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcpss_color_2');
delete_site_option('wcpss_color_2');
delete_option('wcpss_color_3');
delete_site_option('wcpss_color_3');
delete_option('wcpss_color_4');
delete_site_option('wcpss_color_4');
delete_option('wcpss_color_5');
delete_site_option('wcpss_color_5');
delete_option('woocommerce_disable_emoticons');
delete_site_option('woocommerce_disable_emoticons');
delete_option('woocommerce_disable_hint_text');
delete_site_option('woocommerce_disable_hint_text');
delete_option('woocommerce_myaccount_password_strength');
delete_site_option('woocommerce_myaccount_password_strength');
delete_option('woocommerce_hint_text');
delete_site_option('woocommerce_hint_text');
delete_option('woocommerce_password_strength_label_1');
delete_site_option('woocommerce_password_strength_label_1');
delete_option('woocommerce_password_strength_label_2');
delete_site_option('woocommerce_password_strength_label_2');
delete_option('woocommerce_password_strength_label_3');
delete_site_option('woocommerce_password_strength_label_3');
delete_option('woocommerce_password_strength_label_4');
delete_site_option('woocommerce_password_strength_label_4');
delete_option('woocommerce_password_strength_label_5');
delete_site_option('woocommerce_password_strength_label_5');

