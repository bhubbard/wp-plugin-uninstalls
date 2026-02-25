<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('snoobi_account_id');
delete_site_option('snoobi_account_id');
delete_option('snoobi_admin_tracking');
delete_site_option('snoobi_admin_tracking');

