<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('affiliates-buddypress-page');
delete_site_option('affiliates-buddypress-page');
delete_option('affiliates-buddypress-page-position');
delete_site_option('affiliates-buddypress-page-position');
delete_option('affiliates-buddypress-all-pages');
delete_site_option('affiliates-buddypress-all-pages');

