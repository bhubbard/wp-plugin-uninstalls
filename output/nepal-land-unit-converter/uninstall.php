<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nepal_land_unit_converter_options');
delete_site_option('nepal_land_unit_converter_options');

