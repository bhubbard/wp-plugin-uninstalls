<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptmbg_covid_info_options');
delete_site_option('ptmbg_covid_info_options');
delete_option('ptmbg_covid_info_data');
delete_site_option('ptmbg_covid_info_data');

