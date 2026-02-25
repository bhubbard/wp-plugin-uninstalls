<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adrcdp_publisher');
delete_site_option('adrcdp_publisher');
delete_option('adrcdp_publisher_auth');
delete_site_option('adrcdp_publisher_auth');

