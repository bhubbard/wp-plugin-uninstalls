<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('prodscribe_ai_provider');
delete_site_option('prodscribe_ai_provider');
delete_option('prodscribe_ai_api_key');
delete_site_option('prodscribe_ai_api_key');
delete_option('prodscribe_ai_model');
delete_site_option('prodscribe_ai_model');
delete_option('prodscribe_ai_include_image');
delete_site_option('prodscribe_ai_include_image');
delete_option('prodscribe_ai_max_tokens');
delete_site_option('prodscribe_ai_max_tokens');
delete_option('prodscribe_ai_trial_count');
delete_site_option('prodscribe_ai_trial_count');

