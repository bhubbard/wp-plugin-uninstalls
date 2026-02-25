<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocom_amp_user_check');
delete_site_option('woocom_amp_user_check');
delete_option('woocom_amp_user_role');
delete_site_option('woocom_amp_user_role');
delete_option('woocom_amp_product_cat');
delete_site_option('woocom_amp_product_cat');
delete_option('woocom_amp_do_activation_redirect');
delete_site_option('woocom_amp_do_activation_redirect');

