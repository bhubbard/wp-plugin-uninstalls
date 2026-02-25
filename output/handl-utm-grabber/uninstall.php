<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hug_zapier_url');
delete_site_option('hug_zapier_url');
delete_option('hug_zapier_log');
delete_site_option('hug_zapier_log');
delete_option('hug_httponly_cookies');
delete_site_option('hug_httponly_cookies');
delete_option('hug_append_all');
delete_site_option('hug_append_all');
delete_option('check_v2717_doc');
delete_site_option('check_v2717_doc');

