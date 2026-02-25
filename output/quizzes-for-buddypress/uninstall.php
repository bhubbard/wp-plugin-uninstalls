<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qbuddy_integration_mode');
delete_site_option('qbuddy_integration_mode');
delete_option('qbuddy_version');
delete_site_option('qbuddy_version');

