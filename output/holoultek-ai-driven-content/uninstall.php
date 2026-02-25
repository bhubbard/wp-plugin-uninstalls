<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('holoultek_ai_content_generator_provider');
delete_site_option('holoultek_ai_content_generator_provider');
delete_option('holoultek_ai_content_generator_api_key');
delete_site_option('holoultek_ai_content_generator_api_key');
delete_option('holoultek_ai_content_generator_system_message');
delete_site_option('holoultek_ai_content_generator_system_message');
delete_option('holoultek_ai_content_generator_maximum_length');
delete_site_option('holoultek_ai_content_generator_maximum_length');

