<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('oheso_version_report_saveddata');
delete_site_option('oheso_version_report_saveddata');
delete_option('oheso_version_report_saveddate');
delete_site_option('oheso_version_report_saveddate');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

