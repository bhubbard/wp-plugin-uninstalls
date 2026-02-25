<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sauce_account_id');
delete_site_option('sauce_account_id');
delete_option('snapppt');
delete_site_option('snapppt');

