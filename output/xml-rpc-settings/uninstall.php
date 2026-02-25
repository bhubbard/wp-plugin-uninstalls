<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('allow_disallow_get_access');
delete_site_option('allow_disallow_get_access');
delete_option('allow_disallow_multicall');
delete_site_option('allow_disallow_multicall');
delete_option('allow_disallow_listmethods');
delete_site_option('allow_disallow_listmethods');
delete_option('allow_disallow_auth');
delete_site_option('allow_disallow_auth');
delete_option('allow_disallow_pingbacks');
delete_site_option('allow_disallow_pingbacks');
delete_option('allow_disallow_header');
delete_site_option('allow_disallow_header');
delete_option('allow_disallow_verify_agent');
delete_site_option('allow_disallow_verify_agent');
delete_option('allow_disallow_send_agent');
delete_site_option('allow_disallow_send_agent');
delete_option('allow_disallow_demo');
delete_site_option('allow_disallow_demo');
delete_option('allow_disallow_blogger');
delete_site_option('allow_disallow_blogger');
delete_option('allow_disallow_metaweblog');
delete_site_option('allow_disallow_metaweblog');
delete_option('allow_disallow_movabletype');
delete_site_option('allow_disallow_movabletype');
delete_option('allowed_ip');
delete_site_option('allowed_ip');
delete_option('methods_message');
delete_site_option('methods_message');

