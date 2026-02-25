<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aipress_openai_settings');
delete_site_option('aipress_openai_settings');
delete_option('aipress_openai_api_key');
delete_site_option('aipress_openai_api_key');

