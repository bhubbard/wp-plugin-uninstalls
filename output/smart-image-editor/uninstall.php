<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sir_default_width');
delete_site_option('sir_default_width');
delete_option('sir_default_height');
delete_site_option('sir_default_height');
delete_option('sir_default_mode');
delete_site_option('sir_default_mode');
delete_option('sir_default_quality');
delete_site_option('sir_default_quality');
delete_option('sir_output_format');
delete_site_option('sir_output_format');
delete_option('sir_filename_suffix');
delete_site_option('sir_filename_suffix');

