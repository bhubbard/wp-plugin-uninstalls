<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbpscwl_enabled_plugins');
delete_site_option('bbpscwl_enabled_plugins');

