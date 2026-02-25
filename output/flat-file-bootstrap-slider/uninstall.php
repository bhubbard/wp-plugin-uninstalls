<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('select_file');
delete_site_option('select_file');
delete_option('add_text');
delete_site_option('add_text');
delete_option('select_order');
delete_site_option('select_order');
delete_option('number_slides');
delete_site_option('number_slides');

