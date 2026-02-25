<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aipd_api_provider');
delete_site_option('aipd_api_provider');
delete_option('aipd_api_key');
delete_site_option('aipd_api_key');

