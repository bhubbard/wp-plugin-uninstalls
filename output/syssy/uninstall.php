<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('syssy_api_key');
delete_site_option('syssy_api_key');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

