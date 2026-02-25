<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bugherd_disable_query_params');
delete_site_option('bugherd_disable_query_params');
delete_option('bugherd_project_key');
delete_site_option('bugherd_project_key');
delete_option('bugherd_enable_admin');
delete_site_option('bugherd_enable_admin');

