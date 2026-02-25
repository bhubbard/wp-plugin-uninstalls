<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kpg_open_in_new_window_options');
delete_site_option('kpg_open_in_new_window_options');

