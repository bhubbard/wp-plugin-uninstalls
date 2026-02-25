<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocketgalleries_disable_welcome_panel');
delete_site_option('rocketgalleries_disable_welcome_panel');
delete_option('rocketgalleries_version');
delete_site_option('rocketgalleries_version');
delete_option('rocketgalleries_settings');
delete_site_option('rocketgalleries_settings');

