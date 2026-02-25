<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('local_dev_extras');
delete_site_option('local_dev_extras');
delete_option('local_development');
delete_site_option('local_development');
delete_option('local_dev_plugins');
delete_site_option('local_dev_plugins');
delete_option('local_dev_themes');
delete_site_option('local_dev_themes');

