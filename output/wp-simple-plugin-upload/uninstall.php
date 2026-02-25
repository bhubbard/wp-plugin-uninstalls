<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seerox_wpspu_activated');
delete_site_option('seerox_wpspu_activated');
delete_option('seerox_wpspu_deactivated');
delete_site_option('seerox_wpspu_deactivated');

