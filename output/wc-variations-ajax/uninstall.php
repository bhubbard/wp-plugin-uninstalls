<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nwmc_var_ajax_settings');
delete_site_option('nwmc_var_ajax_settings');

