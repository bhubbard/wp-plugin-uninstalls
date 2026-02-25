<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optiMonkDoActivationRedirect');
delete_site_option('optiMonkDoActivationRedirect');
delete_option('accountId');
delete_site_option('accountId');
delete_option('optiMonk_accountId');
delete_site_option('optiMonk_accountId');

