<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_exacttarget_settings');
delete_site_option('gf_exacttarget_settings');
delete_option('gf_exacttarget_version');
delete_site_option('gf_exacttarget_version');
delete_option('recently_activated');
delete_site_option('recently_activated');

// Delete Transients
delete_transient('extr_lists_all');
delete_site_transient('extr_lists_all');
delete_transient('extr_lists_raw');
delete_site_transient('extr_lists_raw');
delete_transient('extr_lists');
delete_site_transient('extr_lists');

