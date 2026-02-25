<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mc_force_map_meta_cap');
delete_site_option('mc_force_map_meta_cap');

