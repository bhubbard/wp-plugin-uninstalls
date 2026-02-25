<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('venio_config');
delete_site_option('venio_config');
delete_option('venio_api_last_call');
delete_site_option('venio_api_last_call');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

