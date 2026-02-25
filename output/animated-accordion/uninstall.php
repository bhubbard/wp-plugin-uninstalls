<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('animated_Accordion_db_version');
delete_site_option('animated_Accordion_db_version');
delete_option('custom_table_example_db_version');
delete_site_option('custom_table_example_db_version');

