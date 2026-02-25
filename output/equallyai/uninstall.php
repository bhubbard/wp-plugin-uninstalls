<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('equally_ai_api_key');
delete_site_option('equally_ai_api_key');
delete_option('equally_ai_url_src');
delete_site_option('equally_ai_url_src');

