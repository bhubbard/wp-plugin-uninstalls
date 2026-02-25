<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');
delete_option('woocommerce_acceptcoin_settings');
delete_site_option('woocommerce_acceptcoin_settings');
delete_option('smtp_host');
delete_site_option('smtp_host');
delete_option('smtp_port');
delete_site_option('smtp_port');
delete_option('smtp_username');
delete_site_option('smtp_username');
delete_option('smtp_password');
delete_site_option('smtp_password');
delete_option('smtp_encryption');
delete_site_option('smtp_encryption');

