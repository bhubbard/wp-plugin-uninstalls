<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('schg_tables_initialized');
delete_site_option('schg_tables_initialized');
delete_option('schg_installed');
delete_site_option('schg_installed');

