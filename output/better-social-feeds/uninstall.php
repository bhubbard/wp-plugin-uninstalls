<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fftmj_client_id');
delete_site_option('fftmj_client_id');
delete_option('fftmj_client_secret');
delete_site_option('fftmj_client_secret');
delete_option('fftmj_redirect_uri');
delete_site_option('fftmj_redirect_uri');
delete_option('fftmj_api_long_token');
delete_site_option('fftmj_api_long_token');
delete_option('fftmj_api_long_token_generated');
delete_site_option('fftmj_api_long_token_generated');
delete_option('fftmj_api_long_token_expires');
delete_site_option('fftmj_api_long_token_expires');

