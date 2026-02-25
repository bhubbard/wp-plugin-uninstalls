<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basic_auth_for_wp_admin_options');
delete_site_option('basic_auth_for_wp_admin_options');

