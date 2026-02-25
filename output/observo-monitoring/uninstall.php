<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('observo_sysinfo_code');
delete_site_option('observo_sysinfo_code');

// Delete Transients
delete_transient('observo-monitoring-admin-notice-install');
delete_site_transient('observo-monitoring-admin-notice-install');

