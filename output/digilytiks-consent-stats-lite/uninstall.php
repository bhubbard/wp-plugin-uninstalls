<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dglytks_cs_version');
delete_site_option('dglytks_cs_version');
delete_option('dglytks_cs_settings');
delete_site_option('dglytks_cs_settings');
delete_option('dglytks_cs_license_key');
delete_site_option('dglytks_cs_license_key');

