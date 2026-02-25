<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('falke_ccco_scripts');
delete_site_option('falke_ccco_scripts');
delete_option('falke_ccco_settings');
delete_site_option('falke_ccco_settings');

