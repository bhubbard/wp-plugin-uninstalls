<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('te-redirect');
delete_site_option('te-redirect');
delete_option('te-redirect-name');
delete_site_option('te-redirect-name');

