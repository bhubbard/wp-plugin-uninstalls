<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ga');
delete_site_option('ga');
delete_option('canonical');
delete_site_option('canonical');

