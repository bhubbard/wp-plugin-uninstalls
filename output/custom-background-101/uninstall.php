<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bc');
delete_site_option('bc');
delete_option('bg');
delete_site_option('bg');
delete_option('repeat');
delete_site_option('repeat');
delete_option('position');
delete_site_option('position');
delete_option('position2');
delete_site_option('position2');

