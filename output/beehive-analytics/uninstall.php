<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('beehive_version');
delete_site_option('beehive_version');
delete_option('beehive_owner_user');
delete_site_option('beehive_owner_user');
delete_option('wdev-frash');
delete_site_option('wdev-frash');
delete_option('psts_levels');
delete_site_option('psts_levels');

