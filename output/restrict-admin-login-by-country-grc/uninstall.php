<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('grcsecdev_allowed_countries');
delete_site_option('grcsecdev_allowed_countries');
delete_option('grcsecdev_installer_country');
delete_site_option('grcsecdev_installer_country');

