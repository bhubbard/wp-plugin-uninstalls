<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('koi_url');
delete_site_option('koi_url');
delete_option('koi_front_token');
delete_site_option('koi_front_token');
delete_option('koi_back_token');
delete_site_option('koi_back_token');

