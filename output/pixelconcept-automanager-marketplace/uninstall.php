<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pxc_amm_apikey');
delete_site_option('pxc_amm_apikey');
delete_option('pxc_amm_url_terms');
delete_site_option('pxc_amm_url_terms');
delete_option('pxc_amm_url_privacy');
delete_site_option('pxc_amm_url_privacy');
delete_option('pxc_amm_url_imprint');
delete_site_option('pxc_amm_url_imprint');

