<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('open_calais_api_token');
delete_site_option('open_calais_api_token');
delete_option('open_calais_show_existing');
delete_site_option('open_calais_show_existing');

