<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eventflow_access_token');
delete_site_option('eventflow_access_token');
delete_option('eventflow_access_token_secret');
delete_site_option('eventflow_access_token_secret');

