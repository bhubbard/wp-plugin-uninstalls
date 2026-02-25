<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('is_ipg_mode_enabled');
delete_site_option('is_ipg_mode_enabled');
delete_option('ipay_gw_sec');
delete_site_option('ipay_gw_sec');
delete_option('ipay_global_gw_wc_api_string');
delete_site_option('ipay_global_gw_wc_api_string');

