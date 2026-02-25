<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('watso_settings');
delete_site_option('watso_settings');
delete_option('watso_data_cleaned');
delete_site_option('watso_data_cleaned');

