<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcpscwc_sf_optin');
delete_site_option('wcpscwc_sf_optin');

// Delete Transients
delete_transient('wcpscwc_install_notice');
delete_site_transient('wcpscwc_install_notice');
delete_transient('espbw_plugins_data');
delete_site_transient('espbw_plugins_data');

