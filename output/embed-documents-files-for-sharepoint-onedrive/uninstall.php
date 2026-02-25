<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('esodwpi_client_id');
delete_site_option('esodwpi_client_id');
delete_option('esodwpi_client_secret');
delete_site_option('esodwpi_client_secret');
delete_option('esodwpi_tenant_id');
delete_site_option('esodwpi_tenant_id');
delete_option('esodwpi_redirect_uri');
delete_site_option('esodwpi_redirect_uri');
delete_option('esodwpi_access_token');
delete_site_option('esodwpi_access_token');
delete_option('esodwpi_code');
delete_site_option('esodwpi_code');
delete_option('esodwpi_refresh_token');
delete_site_option('esodwpi_refresh_token');

