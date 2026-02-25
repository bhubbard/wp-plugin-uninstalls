<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('conzent_verified');
delete_site_option('conzent_verified');
delete_option('conzent_website_key');
delete_site_option('conzent_website_key');
delete_option('conzent_site_domain');
delete_site_option('conzent_site_domain');
delete_option('conzent_error');
delete_site_option('conzent_error');
delete_option('conzent_db_version');
delete_site_option('conzent_db_version');
delete_option('conzent_plugin_error');
delete_site_option('conzent_plugin_error');
delete_option('conzent_site_name');
delete_site_option('conzent_site_name');
delete_option('conzent_site_status');
delete_site_option('conzent_site_status');
delete_option('conzent_site_id');
delete_site_option('conzent_site_id');
delete_option('conzent-gtm-id');
delete_site_option('conzent-gtm-id');
delete_option('conzent-data-layer');
delete_site_option('conzent-data-layer');

