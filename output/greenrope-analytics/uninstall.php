<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('greenrope_settings');
delete_site_option('greenrope_settings');
delete_option('byte_addanalytic_settings');
delete_site_option('byte_addanalytic_settings');

