<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('echoza_enabled');
delete_site_option('echoza_enabled');
delete_option('echoza_app_key');
delete_site_option('echoza_app_key');
delete_option('echoza_version');
delete_site_option('echoza_version');
delete_option('echoza_app_secret');
delete_site_option('echoza_app_secret');
delete_option('echoza_endpoint');
delete_site_option('echoza_endpoint');
delete_option('echoza_access_token');
delete_site_option('echoza_access_token');

