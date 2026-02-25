<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('metrics_auth_username');
delete_site_option('metrics_auth_username');
delete_option('metrics_auth_password');
delete_site_option('metrics_auth_password');
delete_option('metrics_site');
delete_site_option('metrics_site');
delete_option('metrics_variant');
delete_site_option('metrics_variant');
delete_option('metrics_uris_to_check');
delete_site_option('metrics_uris_to_check');
delete_option('metrics_auth_site');
delete_site_option('metrics_auth_site');
delete_option('metrics_auth_variant');
delete_site_option('metrics_auth_variant');

