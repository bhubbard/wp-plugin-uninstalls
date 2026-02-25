<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbpuos_settings');
delete_site_option('bbpuos_settings');

// Delete Transients
delete_transient('users_online');
delete_site_transient('users_online');

