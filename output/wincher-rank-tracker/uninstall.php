<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wincher_account_type');
delete_site_option('wincher_account_type');
delete_option('wincher_oauth_token');
delete_site_option('wincher_oauth_token');

