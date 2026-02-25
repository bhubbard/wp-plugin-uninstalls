<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('binox_wp_account');
delete_site_option('binox_wp_account');
delete_option('binox_wp_domain');
delete_site_option('binox_wp_domain');

