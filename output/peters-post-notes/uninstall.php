<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ppn_settings');
delete_site_option('ppn_settings');
delete_option('ppn_version');
delete_site_option('ppn_version');

