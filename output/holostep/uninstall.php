<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('holostepDoActivationRedirect');
delete_site_option('holostepDoActivationRedirect');
delete_option('accountId');
delete_site_option('accountId');
delete_option('holostep_accountId');
delete_site_option('holostep_accountId');

