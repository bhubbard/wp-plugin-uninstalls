<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smart_url');
delete_site_option('smart_url');
delete_option('smart_btime');
delete_site_option('smart_btime');
delete_option('smart_etime');
delete_site_option('smart_etime');
delete_option('smart_h');
delete_site_option('smart_h');
delete_option('smart_d');
delete_site_option('smart_d');
delete_option('smart_u');
delete_site_option('smart_u');

