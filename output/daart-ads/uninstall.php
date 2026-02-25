<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('daart_ads_token');
delete_site_option('daart_ads_token');

// Delete Transients
delete_transient('daart_error_token');
delete_site_transient('daart_error_token');
delete_transient('error_token_uuid');
delete_site_transient('error_token_uuid');

