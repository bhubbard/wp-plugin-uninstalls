<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MM_And_SUC_Free_options');
delete_site_option('MM_And_SUC_Free_options');
delete_option('maintenance_mode_enabled');
delete_site_option('maintenance_mode_enabled');

