<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ees-connecting-status');
delete_site_option('ees-connecting-status');
delete_option('ee_options');
delete_site_option('ee_options');
delete_option('ees_plugin_dir_name');
delete_site_option('ees_plugin_dir_name');
delete_option('ee_from_email');
delete_site_option('ee_from_email');
delete_option('ee_is_created_channels');
delete_site_option('ee_is_created_channels');
delete_option('elastic-email-to-send-status');
delete_site_option('elastic-email-to-send-status');
delete_option('daterangeselect');
delete_site_option('daterangeselect');
delete_option('ee-apikey');
delete_site_option('ee-apikey');
delete_option('ee_send-email-type');
delete_site_option('ee_send-email-type');
delete_option('ee_mimetype');
delete_site_option('ee_mimetype');
delete_option('ee_config_from_name');
delete_site_option('ee_config_from_name');
delete_option('ee_config_override_wooCommerce');
delete_site_option('ee_config_override_wooCommerce');
delete_option('ee_config_from_email');
delete_site_option('ee_config_from_email');
delete_option('ee_channel_name');
delete_site_option('ee_channel_name');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('ee_config_woocommerce_original_email');
delete_site_option('ee_config_woocommerce_original_email');
delete_option('woocommerce_email_from_name');
delete_site_option('woocommerce_email_from_name');
delete_option('ee_config_woocommerce_original_name');
delete_site_option('ee_config_woocommerce_original_name');

