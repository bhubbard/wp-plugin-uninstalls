<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp247xns_client_extensions');
delete_site_option('wp247xns_client_extensions');
delete_option('wp247xns_client_settings');
delete_site_option('wp247xns_client_settings');

