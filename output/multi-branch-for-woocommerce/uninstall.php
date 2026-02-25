<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_mbw_users_count');
delete_site_option('wc_mbw_users_count');
delete_option('wc_mbw_branches_count');
delete_site_option('wc_mbw_branches_count');

