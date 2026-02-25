<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_villoid_access_token');
delete_site_option('woocommerce_villoid_access_token');
delete_option('woocommerce_villoid_user_id');
delete_site_option('woocommerce_villoid_user_id');
delete_option('woocommerce_villoid_has_auth_keys');
delete_site_option('woocommerce_villoid_has_auth_keys');
delete_option('woocommerce_villoid_gain_access_in_progress');
delete_site_option('woocommerce_villoid_gain_access_in_progress');

