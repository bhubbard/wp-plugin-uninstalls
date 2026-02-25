<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('openai_api_key');
delete_site_option('openai_api_key');
delete_option('openai_max_tokens');
delete_site_option('openai_max_tokens');
delete_option('openai_temperature');
delete_site_option('openai_temperature');
delete_option('openai_model');
delete_site_option('openai_model');

