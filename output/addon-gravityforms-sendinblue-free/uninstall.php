<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('dkgfsib-free_version');
delete_site_option('dkgfsib-free_version');

// Delete Transients
delete_transient('wpconnectgfsib_deactivated_notice_id');
delete_site_transient('wpconnectgfsib_deactivated_notice_id');

