<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abt_locale');
delete_site_option('abt_locale');
delete_option('abt_sc');
delete_site_option('abt_sc');
delete_option('abt_status');
delete_site_option('abt_status');
delete_option('abt_db_version');
delete_site_option('abt_db_version');

