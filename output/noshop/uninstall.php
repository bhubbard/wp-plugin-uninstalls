<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('noshop_db_version');
delete_site_option('noshop_db_version');
delete_option('noshop_options');
delete_site_option('noshop_options');
delete_option('noshop_selectproduct');
delete_site_option('noshop_selectproduct');

