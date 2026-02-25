<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eamm_options');
delete_site_option('eamm_options');
delete_option('eamm_log');
delete_site_option('eamm_log');

