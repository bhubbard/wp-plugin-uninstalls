<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fscore_cricket_settings_options');
delete_site_option('fscore_cricket_settings_options');
delete_option('fscore_crecket_settings_options');
delete_site_option('fscore_crecket_settings_options');

