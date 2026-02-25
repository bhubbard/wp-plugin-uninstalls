<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abp_activated');
delete_site_option('abp_activated');
delete_option('abp_notices');
delete_site_option('abp_notices');

