<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rn_ssp_public_key');
delete_site_option('rn_ssp_public_key');
delete_option('rn_ssp_secret_key');
delete_site_option('rn_ssp_secret_key');
delete_option('rn_ssp_currency');
delete_site_option('rn_ssp_currency');
delete_option('rn_ssp_name');
delete_site_option('rn_ssp_name');
delete_option('rn_ssp_price');
delete_site_option('rn_ssp_price');
delete_option('rn_ssp_success_url');
delete_site_option('rn_ssp_success_url');
delete_option('rn_ssp_cancel_url');
delete_site_option('rn_ssp_cancel_url');

