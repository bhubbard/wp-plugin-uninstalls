<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('create_wordpress_tables_created_tables');
delete_site_option('create_wordpress_tables_created_tables');

