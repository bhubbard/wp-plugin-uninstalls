<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hits_6');
delete_site_option('hits_6');
delete_option('hits_4');
delete_site_option('hits_4');
delete_option('whois_url');
delete_site_option('whois_url');
delete_option('ipv6detector_v4_msg');
delete_site_option('ipv6detector_v4_msg');
delete_option('ipv6detector_v6_msg');
delete_site_option('ipv6detector_v6_msg');

