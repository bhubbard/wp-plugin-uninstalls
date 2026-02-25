<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ecwo-save-template');
delete_site_option('ecwo-save-template');
delete_option('ecwo-templates-settings');
delete_site_option('ecwo-templates-settings');
delete_option('ecwo_meta');
delete_site_option('ecwo_meta');
delete_option('ecwo_do_activation_redirect');
delete_site_option('ecwo_do_activation_redirect');
delete_option('woocommerce_email_background_color');
delete_site_option('woocommerce_email_background_color');
delete_option('woocommerce_email_body_background_color');
delete_site_option('woocommerce_email_body_background_color');
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('woocommerce_email_text_color');
delete_site_option('woocommerce_email_text_color');

