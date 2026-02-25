<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rxpp_blocked_methods_count');
delete_site_option('rxpp_blocked_methods_count');
delete_option('blocked_pingback_ping');
delete_site_option('blocked_pingback_ping');

