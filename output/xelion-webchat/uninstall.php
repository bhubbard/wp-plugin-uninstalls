<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xwc_initial_form_enquiry_required');
delete_site_option('xwc_initial_form_enquiry_required');
delete_option('xwc_api_host');
delete_site_option('xwc_api_host');
delete_option('xwc_api_tenant');
delete_site_option('xwc_api_tenant');
delete_option('xwc_api_gateway');
delete_site_option('xwc_api_gateway');
delete_option('xwc_api_token');
delete_site_option('xwc_api_token');
delete_option('xwc_api_is_valid');
delete_site_option('xwc_api_is_valid');

