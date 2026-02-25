<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aios_alm_last_execution');
delete_site_option('aios_alm_last_execution');
delete_option('aios_alm_settings');
delete_site_option('aios_alm_settings');

