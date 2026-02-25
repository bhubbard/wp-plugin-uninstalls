<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vectorseek_host');
delete_site_option('vectorseek_host');
delete_option('vectorseek_context');
delete_site_option('vectorseek_context');
delete_option('vectorseek_api_key');
delete_site_option('vectorseek_api_key');
delete_option('vectorseek_search_class');
delete_site_option('vectorseek_search_class');

