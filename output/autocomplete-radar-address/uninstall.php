<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autordr_radautordr_api_key');
delete_site_option('autordr_radautordr_api_key');
delete_option('autordr_frontend_field_ids');
delete_site_option('autordr_frontend_field_ids');
delete_option('autordr_backend_field_ids');
delete_site_option('autordr_backend_field_ids');

