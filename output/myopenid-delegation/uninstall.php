<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('myopenid_delegation_account_username');
delete_site_option('myopenid_delegation_account_username');

