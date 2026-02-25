<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ms_design_setting');
delete_site_option('ms_design_setting');
delete_option('ms_slider_setting');
delete_site_option('ms_slider_setting');
delete_option('ms_grid_activation_redirect');
delete_site_option('ms_grid_activation_redirect');

