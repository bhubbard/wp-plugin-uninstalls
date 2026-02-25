<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('_ buddytask_version');
delete_site_option('_ buddytask_version');
delete_option('_buddytask_enabled');
delete_site_option('_buddytask_enabled');

// Delete Transients
delete_transient('_ buddytask_is_new_install');
delete_site_transient('_ buddytask_is_new_install');
delete_transient('_ buddytask_activation_redirect');
delete_site_transient('_ buddytask_activation_redirect');

