<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trustlocal_widgets_api_key');
delete_site_option('trustlocal_widgets_api_key');
delete_option('trustlocal_widgets_country_code');
delete_site_option('trustlocal_widgets_country_code');
delete_option('trustlocal_widgets_data_id');
delete_site_option('trustlocal_widgets_data_id');

