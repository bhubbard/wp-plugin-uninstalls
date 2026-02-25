<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('gdbcsettingsadminmodule-settings');
delete_site_option('gdbcsettingsadminmodule-settings');
delete_option('gdbcwordpressadminmodule-settings');
delete_site_option('gdbcwordpressadminmodule-settings');
delete_option('gdbcultimatememberadminmodule-settings');
delete_site_option('gdbcultimatememberadminmodule-settings');
delete_option('gdbcsubscriptionsadminmodule-settings');
delete_site_option('gdbcsubscriptionsadminmodule-settings');
delete_option('gdbcpopularformsadminmodule-settings');
delete_site_option('gdbcpopularformsadminmodule-settings');
delete_option('gdbc-blocked-attempts');
delete_site_option('gdbc-blocked-attempts');
delete_option('jetpack_active_modules');
delete_site_option('jetpack_active_modules');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

