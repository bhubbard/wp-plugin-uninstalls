<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('use_clients_timezone_fallback_timezone');
delete_site_option('use_clients_timezone_fallback_timezone');

