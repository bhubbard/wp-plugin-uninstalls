<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bp_gift_given_cp_bp');
delete_site_option('bp_gift_given_cp_bp');
delete_option('bp-gifts-db-version');
delete_site_option('bp-gifts-db-version');

