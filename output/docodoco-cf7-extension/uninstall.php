<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('docodoco_cf7_extension_common_settings');
delete_site_option('docodoco_cf7_extension_common_settings');

