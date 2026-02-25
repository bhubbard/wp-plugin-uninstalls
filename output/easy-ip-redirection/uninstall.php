<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('eip_redirect_provider');
delete_site_option('eip_redirect_provider');
delete_option('eip_redirect_api2');
delete_site_option('eip_redirect_api2');
delete_option('eip_redirect_api3');
delete_site_option('eip_redirect_api3');
delete_option('eip_country');
delete_site_option('eip_country');
delete_option('eip_ruletype');
delete_site_option('eip_ruletype');
delete_option('eip_redirect_url');
delete_site_option('eip_redirect_url');

