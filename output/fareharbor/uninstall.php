<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fareharbor_version');
delete_site_option('fareharbor_version');
delete_option('fareharbor_settings');
delete_site_option('fareharbor_settings');
delete_option('fareharbor_kit_version');
delete_site_option('fareharbor_kit_version');

