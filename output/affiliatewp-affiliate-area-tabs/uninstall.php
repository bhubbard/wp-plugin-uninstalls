<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affwp_version');
delete_site_option('affwp_version');
delete_option('affwp_aat_version');
delete_site_option('affwp_aat_version');
delete_option('affwp_aat_version_upgraded_from');
delete_site_option('affwp_aat_version_upgraded_from');
delete_option('affwp_settings');
delete_site_option('affwp_settings');

