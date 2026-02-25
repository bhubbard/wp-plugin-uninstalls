<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('takethelead_settings');
delete_site_option('takethelead_settings');
delete_option('takethelead_application');
delete_site_option('takethelead_application');
delete_option('takethelead_styles');
delete_site_option('takethelead_styles');

