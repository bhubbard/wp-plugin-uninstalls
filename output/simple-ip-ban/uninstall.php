<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('s_not_for_logged_in_user');
delete_site_option('s_not_for_logged_in_user');
delete_option('s_ip_list');
delete_site_option('s_ip_list');
delete_option('s_ua_list');
delete_site_option('s_ua_list');
delete_option('s_redirect_url');
delete_site_option('s_redirect_url');

