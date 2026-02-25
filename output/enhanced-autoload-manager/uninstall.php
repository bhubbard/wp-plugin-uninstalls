<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edal_disabled_autoloads');
delete_site_option('edal_disabled_autoloads');
delete_option('edal_dismissed_warnings');
delete_site_option('edal_dismissed_warnings');
delete_option('edal_locked_autoloads');
delete_site_option('edal_locked_autoloads');
delete_option('edal_total_autoload_size');
delete_site_option('edal_total_autoload_size');

// Delete Transients
delete_transient('edal_autoload_cache');
delete_site_transient('edal_autoload_cache');

