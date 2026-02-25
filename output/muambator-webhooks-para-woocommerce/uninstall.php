<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mbwebhooks-settings');
delete_site_option('mbwebhooks-settings');
delete_option('mbwebhooks_db_version');
delete_site_option('mbwebhooks_db_version');

// Delete Transients
delete_transient('mbwebhook_installing');
delete_site_transient('mbwebhook_installing');

