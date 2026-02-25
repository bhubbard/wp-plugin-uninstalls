<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_fl_builder_uabb');
delete_site_option('_fl_builder_uabb');
delete_option('_dv_enabled_icons');
delete_site_option('_dv_enabled_icons');

