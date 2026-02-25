<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('id_tabs');
delete_site_option('id_tabs');
delete_option('max_width');
delete_site_option('max_width');
delete_option('min_width');
delete_site_option('min_width');
delete_option('height');
delete_site_option('height');
delete_option('map_type');
delete_site_option('map_type');
delete_option('all');
delete_site_option('all');
delete_option('view_all');
delete_site_option('view_all');
delete_option('active');
delete_site_option('active');
delete_option('info');
delete_site_option('info');
delete_option('background_color');
delete_site_option('background_color');
delete_option('text_color');
delete_site_option('text_color');
delete_option('db_table_version');
delete_site_option('db_table_version');

