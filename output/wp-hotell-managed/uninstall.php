<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wphm_options');
delete_site_option('wphm_options');
delete_option('wphm_blacklisted_ips');
delete_site_option('wphm_blacklisted_ips');

