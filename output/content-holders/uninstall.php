<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('name');
delete_site_option('name');
delete_option('time');
delete_site_option('time');
delete_option('date');
delete_site_option('date');

