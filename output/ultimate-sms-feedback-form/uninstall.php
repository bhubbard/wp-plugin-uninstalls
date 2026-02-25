<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adminmobile');
delete_site_option('adminmobile');
delete_option('provider');
delete_site_option('provider');
delete_option('username');
delete_site_option('username');
delete_option('password');
delete_site_option('password');
delete_option('sender');
delete_site_option('sender');
delete_option('visitormsg');
delete_site_option('visitormsg');
delete_option('msg');
delete_site_option('msg');

