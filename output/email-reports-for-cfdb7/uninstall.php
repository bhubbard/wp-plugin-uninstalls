<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('erf_cfdb7_settings');
delete_site_option('erf_cfdb7_settings');
delete_option('erf_cfdb7_clear_data');
delete_site_option('erf_cfdb7_clear_data');

