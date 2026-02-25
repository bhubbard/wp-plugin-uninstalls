<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exteacma_api_token');
delete_site_option('exteacma_api_token');
delete_option('exteacma_api_username');
delete_site_option('exteacma_api_username');
delete_option('exteacma_api_uuid');
delete_site_option('exteacma_api_uuid');

