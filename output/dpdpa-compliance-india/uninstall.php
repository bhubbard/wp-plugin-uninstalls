<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpdpa_settings');
delete_site_option('dpdpa_settings');
delete_option('dpdpa_version');
delete_site_option('dpdpa_version');

