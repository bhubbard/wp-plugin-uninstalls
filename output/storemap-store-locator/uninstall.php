<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('storemap_sl_api_token');
delete_site_option('storemap_sl_api_token');
delete_option('storemap_sl_language');
delete_site_option('storemap_sl_language');

