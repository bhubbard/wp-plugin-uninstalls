<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('remove_wp_admin_bar_user_role');
delete_site_option('remove_wp_admin_bar_user_role');

