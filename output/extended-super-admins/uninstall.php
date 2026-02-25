<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_esa_deleted_deprecated_role');
delete_site_option('_esa_deleted_deprecated_role');
delete_option('_esa_capsCodexInfo');
delete_site_option('_esa_capsCodexInfo');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('_esa_capsCodexInfo');
delete_site_transient('_esa_capsCodexInfo');

