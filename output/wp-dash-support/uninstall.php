<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_wpds_deferred_admin_notice');
delete_site_option('_wpds_deferred_admin_notice');
delete_option('_wpds_dev_email');
delete_site_option('_wpds_dev_email');
delete_option('_wpds_hide');
delete_site_option('_wpds_hide');
delete_option('_wpds_message');
delete_site_option('_wpds_message');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

