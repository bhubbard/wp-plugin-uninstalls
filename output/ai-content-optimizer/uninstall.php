<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ai_optimizer_api_key');
delete_site_option('ai_optimizer_api_key');
delete_option('ai_optimizer_endpoint');
delete_site_option('ai_optimizer_endpoint');
delete_option('ai_optimizer_model');
delete_site_option('ai_optimizer_model');
delete_option('ai_optimizer_temperature');
delete_site_option('ai_optimizer_temperature');
delete_option('ai_optimizer_max_tokens');
delete_site_option('ai_optimizer_max_tokens');
delete_option('ai_optimizer_system_message');
delete_site_option('ai_optimizer_system_message');
delete_option('ai_optimizer_user_message');
delete_site_option('ai_optimizer_user_message');

