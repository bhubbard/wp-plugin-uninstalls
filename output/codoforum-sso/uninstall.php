<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codoforum_clientid');
delete_site_option('codoforum_clientid');
delete_option('codoforum_secret');
delete_site_option('codoforum_secret');

