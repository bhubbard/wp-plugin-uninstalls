<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hab_admin_bar_settings');
delete_site_option('hab_admin_bar_settings');

