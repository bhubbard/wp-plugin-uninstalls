<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bb_ai_content_generator_encryption_key');
delete_site_option('bb_ai_content_generator_encryption_key');
delete_option('bb_ai_content_generator_api_key');
delete_site_option('bb_ai_content_generator_api_key');
delete_option('bb_ai_content_generator_api_usage_stats');
delete_site_option('bb_ai_content_generator_api_usage_stats');

// Delete Transients
delete_transient('bb_ai_content_generator_temp_data');
delete_site_transient('bb_ai_content_generator_temp_data');

