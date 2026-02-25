<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sevu_show_errors');
delete_site_option('sevu_show_errors');
delete_option('sevu_api_secret');
delete_site_option('sevu_api_secret');
delete_option('sevu_api_public');
delete_site_option('sevu_api_public');
delete_option('sevu_api_address');
delete_site_option('sevu_api_address');
delete_option('sevu_cdn');
delete_site_option('sevu_cdn');

