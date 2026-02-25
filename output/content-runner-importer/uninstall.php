<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crpi_username');
delete_site_option('crpi_username');
delete_option('crpi_api_key');
delete_site_option('crpi_api_key');
delete_option('crpi_password');
delete_site_option('crpi_password');
delete_option('crpi_email');
delete_site_option('crpi_email');
delete_option('crpi_token');
delete_site_option('crpi_token');
delete_option('crpi_valid_auth');
delete_site_option('crpi_valid_auth');

