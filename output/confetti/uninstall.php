<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wps_confetti');
delete_site_option('wps_confetti');
delete_option('wps_confetti_migrated_v2');
delete_site_option('wps_confetti_migrated_v2');

