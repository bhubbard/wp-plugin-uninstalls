<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dlucs_installed');
delete_site_option('dlucs_installed');
delete_option('dlucs_version');
delete_site_option('dlucs_version');
delete_option('dlucs-opt');
delete_site_option('dlucs-opt');

