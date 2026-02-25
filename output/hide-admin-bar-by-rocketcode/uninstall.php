<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocketcode_hab_options');
delete_site_option('rocketcode_hab_options');
delete_option('rocketcode_hab_id');
delete_site_option('rocketcode_hab_id');

