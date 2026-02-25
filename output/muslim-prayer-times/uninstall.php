<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('muslprti_settings');
delete_site_option('muslprti_settings');
delete_option('muslprti_db_version');
delete_site_option('muslprti_db_version');

