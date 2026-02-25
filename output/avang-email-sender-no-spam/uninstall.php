<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avang-email-sender-basename');
delete_site_option('avang-email-sender-basename');
delete_option('avang-email-subscribe-basename');
delete_site_option('avang-email-subscribe-basename');
delete_option('avangemail_plugin_dir_name');
delete_site_option('avangemail_plugin_dir_name');
delete_option('avangemail_options');
delete_site_option('avangemail_options');
delete_option('avangemail_send-email-type');
delete_site_option('avangemail_send-email-type');
delete_option('avangemail_config_from_name');
delete_site_option('avangemail_config_from_name');
delete_option('avangemail_config_from_email');
delete_site_option('avangemail_config_from_email');
delete_option('avangemail_from_email');
delete_site_option('avangemail_from_email');
delete_option('avangemail_config_override_wooCommerce');
delete_site_option('avangemail_config_override_wooCommerce');
delete_option('avangemail_config_woocommerce_original_email');
delete_site_option('avangemail_config_woocommerce_original_email');
delete_option('avangemail_config_woocommerce_original_name');
delete_site_option('avangemail_config_woocommerce_original_name');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');

