<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avayo_account');
delete_site_option('avayo_account');
delete_option('avayo_account_type');
delete_site_option('avayo_account_type');

