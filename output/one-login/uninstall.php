<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('one_login_api_key');
delete_site_option('one_login_api_key');
delete_option('one_login_api_domain');
delete_site_option('one_login_api_domain');

