<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optin_account_id');
delete_site_option('optin_account_id');
delete_option('optin_user_id');
delete_site_option('optin_user_id');

