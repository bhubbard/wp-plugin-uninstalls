<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sdottxt_content');
delete_site_option('sdottxt_content');
delete_option('sdottxt_delete_data');
delete_site_option('sdottxt_delete_data');

