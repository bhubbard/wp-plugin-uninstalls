<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('timezone');
delete_site_option('timezone');
delete_option('ip');
delete_site_option('ip');
delete_option('proxy');
delete_site_option('proxy');
delete_option('curl_module');
delete_site_option('curl_module');
delete_option('first');
delete_site_option('first');
delete_option('msg');
delete_site_option('msg');
delete_option('redirect');
delete_site_option('redirect');
delete_option('tor');
delete_site_option('tor');
delete_option('ua');
delete_site_option('ua');
delete_option('log');
delete_site_option('log');
delete_option('ownserverip');
delete_site_option('ownserverip');
delete_option('curl_extension');
delete_site_option('curl_extension');

