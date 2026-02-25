<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('doublethedonation_api_host');
delete_site_option('doublethedonation_api_host');
delete_option('doublethedonation_public_key');
delete_site_option('doublethedonation_public_key');
delete_option('doublethedonation_cache_version');
delete_site_option('doublethedonation_cache_version');
delete_option('doublethedonation_setup_step');
delete_site_option('doublethedonation_setup_step');

