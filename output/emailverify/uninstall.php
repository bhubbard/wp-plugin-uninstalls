<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emailverifyio_settings');
delete_site_option('emailverifyio_settings');

// Delete Transients
delete_transient('ev_account_info');
delete_site_transient('ev_account_info');
delete_transient('ev_api_validation');
delete_site_transient('ev_api_validation');

