<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clinicsoftwarecom_form_fields');
delete_site_option('clinicsoftwarecom_form_fields');
delete_option('clinicsoftwarecom_mapping_fields');
delete_site_option('clinicsoftwarecom_mapping_fields');
delete_option('clinicsoftwarecom_client_key');
delete_site_option('clinicsoftwarecom_client_key');
delete_option('clinicsoftwarecom_client_secret');
delete_site_option('clinicsoftwarecom_client_secret');
delete_option('clinicsoftwarecom_client_alias');
delete_site_option('clinicsoftwarecom_client_alias');
delete_option('clinicsoftwarecom_client_server');
delete_site_option('clinicsoftwarecom_client_server');

