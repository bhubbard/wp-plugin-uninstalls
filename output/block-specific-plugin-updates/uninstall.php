<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpu_update_blocked_plugins');
delete_site_option('bpu_update_blocked_plugins');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');

