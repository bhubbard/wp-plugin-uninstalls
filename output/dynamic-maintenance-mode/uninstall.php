<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dmmrd_enable_mode');
delete_site_option('dmmrd_enable_mode');
delete_option('dmmrd_custom_page_id');
delete_site_option('dmmrd_custom_page_id');
delete_option('dmmrd_mode_scope');
delete_site_option('dmmrd_mode_scope');
delete_option('dmmrd_maintenance_type');
delete_site_option('dmmrd_maintenance_type');

