<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ibup_plugin_redirect');
delete_site_option('ibup_plugin_redirect');
delete_option('ibup_imageboss_active');
delete_site_option('ibup_imageboss_active');
delete_option('ibup_imageboss_lazyload_active');
delete_site_option('ibup_imageboss_lazyload_active');
delete_option('ibup_imageboss_hosts');
delete_site_option('ibup_imageboss_hosts');
delete_option('ibup_imageboss_source');
delete_site_option('ibup_imageboss_source');

