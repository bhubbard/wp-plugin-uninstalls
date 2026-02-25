<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plebeian_market_auth_key');
delete_site_option('plebeian_market_auth_key');
delete_option('plebeian_market_url_connect');
delete_site_option('plebeian_market_url_connect');
delete_option('plebeian_market_cutomization_css');
delete_site_option('plebeian_market_cutomization_css');
delete_option('plebeian_market_cutomization_js');
delete_site_option('plebeian_market_cutomization_js');

