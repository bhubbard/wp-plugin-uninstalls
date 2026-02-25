<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('msc_installed');
delete_site_option('msc_installed');
delete_option('msc_version');
delete_site_option('msc_version');

