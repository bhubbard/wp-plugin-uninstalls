<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ICC_Star_H');
delete_site_option('ICC_Star_H');
delete_option('ICC_Star_Add');
delete_site_option('ICC_Star_Add');
delete_option('ICC_table_db');
delete_site_option('ICC_table_db');

