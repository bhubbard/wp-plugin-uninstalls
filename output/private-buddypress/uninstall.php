<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('private_buddypress');
delete_site_option('private_buddypress');
delete_option('private_buddypress_version');
delete_site_option('private_buddypress_version');
delete_option('blogtitle');
delete_site_option('blogtitle');

