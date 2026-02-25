<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_nasaads_query_importer-token');
delete_site_option('wp_nasaads_query_importer-token');
delete_option('wp_nasaads_query_importer-template');
delete_site_option('wp_nasaads_query_importer-template');
delete_option('wp_nasaads_query_importer-template_start');
delete_site_option('wp_nasaads_query_importer-template_start');
delete_option('wp_nasaads_query_importer-template_stop');
delete_site_option('wp_nasaads_query_importer-template_stop');
delete_option('wp_nasaads_query_importer-numrecords');
delete_site_option('wp_nasaads_query_importer-numrecords');
delete_option('wp_nasaads_query_importer-empty_list');
delete_site_option('wp_nasaads_query_importer-empty_list');
delete_option('wp_nasaads_query_importer-acknowledge');
delete_site_option('wp_nasaads_query_importer-acknowledge');
delete_option('wp_nasaads_query_importer-valid_token');
delete_site_option('wp_nasaads_query_importer-valid_token');

