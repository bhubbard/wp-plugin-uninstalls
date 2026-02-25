<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mfbfw-rate-time');
delete_site_option('mfbfw-rate-time');
delete_option('mfbfw');
delete_site_option('mfbfw');
delete_option('mfbfw_active_version');
delete_site_option('mfbfw_active_version');

