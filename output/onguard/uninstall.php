<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('on_guard_client_id');
delete_site_option('on_guard_client_id');
delete_option('on_guard_client_secret');
delete_site_option('on_guard_client_secret');

