<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sdp_meta_control');
delete_site_option('sdp_meta_control');
delete_option('sdp_is_dns_disable');
delete_site_option('sdp_is_dns_disable');
delete_option('sdp_prefetch_host_list');
delete_site_option('sdp_prefetch_host_list');

