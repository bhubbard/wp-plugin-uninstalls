<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bitwpfzc_erase_all');
delete_site_option('bitwpfzc_erase_all');
delete_option('bitwpfzc_db_version');
delete_site_option('bitwpfzc_db_version');
delete_option('bitwpfzc_installed');
delete_site_option('bitwpfzc_installed');
delete_option('bitwpfzc_version');
delete_site_option('bitwpfzc_version');
delete_option('bitwpfzc_routes');
delete_site_option('bitwpfzc_routes');

