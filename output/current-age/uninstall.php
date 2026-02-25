<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('currentage_settings');
delete_site_option('currentage_settings');
delete_option('calanguage');
delete_site_option('calanguage');

