<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lean_csns_settings');
delete_site_option('lean_csns_settings');
delete_option('lean_csns_db_version');
delete_site_option('lean_csns_db_version');
delete_option('lean_csns_first_install');
delete_site_option('lean_csns_first_install');

