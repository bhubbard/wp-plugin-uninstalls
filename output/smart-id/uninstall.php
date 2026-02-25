<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartid_client_id');
delete_site_option('smartid_client_id');
delete_option('smartid_debug_mode');
delete_site_option('smartid_debug_mode');
delete_option('smartid_registration_disabled');
delete_site_option('smartid_registration_disabled');
delete_option('eideasy_only_identify');
delete_site_option('eideasy_only_identify');
delete_option('eideasy_test_mode');
delete_site_option('eideasy_test_mode');
delete_option('smartid_secret');
delete_site_option('smartid_secret');
delete_option('smartid_redirect_uri');
delete_site_option('smartid_redirect_uri');

