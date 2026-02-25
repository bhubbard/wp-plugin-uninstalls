<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mpa_api_key');
delete_site_option('mpa_api_key');
delete_option('mpa_data_success');
delete_site_option('mpa_data_success');
delete_option('mpa_data_none');
delete_site_option('mpa_data_none');
delete_option('mpa_data_error');
delete_site_option('mpa_data_error');
delete_option('mpa_data_carat_success');
delete_site_option('mpa_data_carat_success');

