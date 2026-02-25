<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clear_comm_keywords');
delete_site_option('clear_comm_keywords');
delete_option('clear_comm_keywords_white');
delete_site_option('clear_comm_keywords_white');
delete_option('clear_comm_test');
delete_site_option('clear_comm_test');

