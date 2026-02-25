<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bitffzc_erase_all');
delete_site_option('bitffzc_erase_all');
delete_option('bitffzc_db_version');
delete_site_option('bitffzc_db_version');
delete_option('bitffzc_installed');
delete_site_option('bitffzc_installed');
delete_option('bitffzc_version');
delete_site_option('bitffzc_version');
delete_option('bitffzc_routes');
delete_site_option('bitffzc_routes');

