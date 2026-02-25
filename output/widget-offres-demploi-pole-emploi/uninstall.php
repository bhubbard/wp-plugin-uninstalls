<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pe_params');
delete_site_option('pe_params');
delete_option('pe_clientid');
delete_site_option('pe_clientid');
delete_option('pe_clientsecret');
delete_site_option('pe_clientsecret');

