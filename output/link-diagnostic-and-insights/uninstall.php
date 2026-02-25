<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lhcfwp_scan_state');
delete_site_option('lhcfwp_scan_state');
delete_option('lhcfwp_settings');
delete_site_option('lhcfwp_settings');

// Delete Transients
delete_transient('lhcfwp_bulk_fix_state');
delete_site_transient('lhcfwp_bulk_fix_state');

