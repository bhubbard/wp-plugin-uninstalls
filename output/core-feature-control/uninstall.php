<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('corefeco_extended_disable_core_settings');
delete_site_option('corefeco_extended_disable_core_settings');
delete_option('disable_auto_updates');
delete_site_option('disable_auto_updates');

