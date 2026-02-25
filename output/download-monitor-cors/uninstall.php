<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dlm_download_endpoint');
delete_site_option('dlm_download_endpoint');
delete_option('dlm_download_endpoint_value');
delete_site_option('dlm_download_endpoint_value');
delete_option('dlm_cors_requester_url');
delete_site_option('dlm_cors_requester_url');

