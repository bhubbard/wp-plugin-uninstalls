<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WSBPN_WPSetting');
delete_site_option('WSBPN_WPSetting');

// Delete Transients
delete_transient('wsbpn_transient_error');
delete_site_transient('wsbpn_transient_error');

