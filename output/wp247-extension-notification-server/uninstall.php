<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp247xns_server_extension');
delete_site_option('wp247xns_server_extension');
delete_option('wp247xns_server_notice');
delete_site_option('wp247xns_server_notice');

