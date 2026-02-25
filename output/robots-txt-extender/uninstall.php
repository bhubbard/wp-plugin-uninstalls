<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('robotsTxtExtender_settingsCode');
delete_site_option('robotsTxtExtender_settingsCode');

