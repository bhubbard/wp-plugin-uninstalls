<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spotlightr_api_key');
delete_site_option('spotlightr_api_key');
delete_option('spotlightr_subdomain');
delete_site_option('spotlightr_subdomain');
delete_option('spotlightr_token');
delete_site_option('spotlightr_token');
delete_option('spotlightr_username');
delete_site_option('spotlightr_username');

