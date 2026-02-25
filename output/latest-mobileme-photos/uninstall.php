<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MML_settings');
delete_site_option('MML_settings');
delete_option('MML_cache');
delete_site_option('MML_cache');

