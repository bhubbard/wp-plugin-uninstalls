<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acfv_option_output');
delete_site_option('acfv_option_output');
delete_option('acfv_option_color_scheme');
delete_site_option('acfv_option_color_scheme');

