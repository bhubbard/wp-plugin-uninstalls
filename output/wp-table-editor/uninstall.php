<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xs_custom_css');
delete_site_option('xs_custom_css');
delete_option('wptableeditor_license');
delete_site_option('wptableeditor_license');
delete_option('wptableeditor_version_installed');
delete_site_option('wptableeditor_version_installed');

// Delete Transients
delete_transient('wptableeditor_tracking');
delete_site_transient('wptableeditor_tracking');

