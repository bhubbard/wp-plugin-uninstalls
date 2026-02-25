<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('winter_mvc_active_plugins');
delete_site_option('winter_mvc_active_plugins');

