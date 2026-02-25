<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('displayembeddedvideosbydb_tb_name');
delete_site_option('displayembeddedvideosbydb_tb_name');
delete_option('displayembeddedvideosbydb_flag_recreation');
delete_site_option('displayembeddedvideosbydb_flag_recreation');
delete_option('displayembeddedvideosbydb_db_version');
delete_site_option('displayembeddedvideosbydb_db_version');

