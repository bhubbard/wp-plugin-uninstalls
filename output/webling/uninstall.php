<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webling-cache-state');
delete_site_option('webling-cache-state');
delete_option('webling-options');
delete_site_option('webling-options');
delete_option('webling-db-version');
delete_site_option('webling-db-version');

