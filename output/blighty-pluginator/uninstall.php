<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpl_email');
delete_site_option('bpl_email');
delete_option('bpl_ignore');
delete_site_option('bpl_ignore');
delete_option('bpl_last_run');
delete_site_option('bpl_last_run');
delete_option('bpl_notified');
delete_site_option('bpl_notified');
delete_option('bpl_snapshot');
delete_site_option('bpl_snapshot');

// Delete Transients
delete_transient('bpl_active_plugins');
delete_site_transient('bpl_active_plugins');
delete_transient('bpl_all_plugins');
delete_site_transient('bpl_all_plugins');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

