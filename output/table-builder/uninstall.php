<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icdb_table_shortcode');
delete_site_option('icdb_table_shortcode');
delete_option('icdb_column_property');
delete_site_option('icdb_column_property');
delete_option('icdb_header_style');
delete_site_option('icdb_header_style');
delete_option('icdb_content_length');
delete_site_option('icdb_content_length');
delete_option('icdb_excerpt_length');
delete_site_option('icdb_excerpt_length');
delete_option('icdb_table_seq');
delete_site_option('icdb_table_seq');

