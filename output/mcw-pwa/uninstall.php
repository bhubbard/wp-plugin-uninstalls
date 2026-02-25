<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcw_enable_assets');
delete_site_option('mcw_enable_assets');
delete_option('mcw_enable_service_workers');
delete_site_option('mcw_enable_service_workers');
delete_option('mcw_enable_lazy_load');
delete_site_option('mcw_enable_lazy_load');

