<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ach_upnm_options');
delete_site_option('ach_upnm_options');

// Delete Transients
delete_transient('achupnm-admin-notice-on-activation');
delete_site_transient('achupnm-admin-notice-on-activation');

