<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('admin_bar_position');
delete_site_option('admin_bar_position');
delete_option('admin_bar_hidden');
delete_site_option('admin_bar_hidden');

