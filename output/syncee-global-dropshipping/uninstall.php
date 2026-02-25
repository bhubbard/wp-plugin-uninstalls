<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('syncee_access_token');
delete_site_option('syncee_access_token');
delete_option('syncee_user_token');
delete_site_option('syncee_user_token');
delete_option('data_to_syncee_installer');
delete_site_option('data_to_syncee_installer');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');

