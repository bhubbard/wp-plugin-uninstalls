<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpscf_settings');
delete_site_option('wpscf_settings');
delete_option('wpscf_db_version');
delete_site_option('wpscf_db_version');

