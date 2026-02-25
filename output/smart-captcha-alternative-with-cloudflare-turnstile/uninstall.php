<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('smartct_keys_verified');
delete_site_option('smartct_keys_verified');
delete_option('smartct_keys_rotated_at');
delete_site_option('smartct_keys_rotated_at');
delete_option('smartct_settings');
delete_site_option('smartct_settings');
delete_option('smartct_evf_validation_error');
delete_site_option('smartct_evf_validation_error');

// Delete Transients
delete_transient('smartct_debug_log');
delete_site_transient('smartct_debug_log');

