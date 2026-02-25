<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pwpl_autogroup');
delete_site_option('pwpl_autogroup');
delete_option('pwpl_colortheme');
delete_site_option('pwpl_colortheme');
delete_option('pwpl_resizespeed');
delete_site_option('pwpl_resizespeed');

