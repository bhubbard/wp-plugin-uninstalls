<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clwp_api_pass_test');
delete_site_option('clwp_api_pass_test');
delete_option('clwp_api_username');
delete_site_option('clwp_api_username');
delete_option('clwp_api_password');
delete_site_option('clwp_api_password');

// Delete Transients
delete_transient('cl_msg_error');
delete_site_transient('cl_msg_error');
delete_transient('cl_msg_success');
delete_site_transient('cl_msg_success');

