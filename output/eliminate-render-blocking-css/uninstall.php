<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('erbcss_settings');
delete_site_option('erbcss_settings');

// Delete Transients
delete_transient('erbcss_api_user');
delete_site_transient('erbcss_api_user');

