<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('semrush_contentshake_api_key');
delete_site_option('semrush_contentshake_api_key');
delete_option('semrush_contentshake_api_key_accepting');
delete_site_option('semrush_contentshake_api_key_accepting');

