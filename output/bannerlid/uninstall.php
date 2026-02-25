<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bannerlid-collect-stats');
delete_site_option('bannerlid-collect-stats');
delete_option('bannerlid-enable-flash');
delete_site_option('bannerlid-enable-flash');
delete_option('bannerlid-version');
delete_site_option('bannerlid-version');

