<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('artbusgen_lite_groq_api_key');
delete_site_option('artbusgen_lite_groq_api_key');
delete_option('artbusgen_lite_groq_model_name');
delete_site_option('artbusgen_lite_groq_model_name');
delete_option('artbusgen_lite_article_topic');
delete_site_option('artbusgen_lite_article_topic');
delete_option('artbusgen_lite_system_prompt');
delete_site_option('artbusgen_lite_system_prompt');
delete_option('artbusgen_lite_category');
delete_site_option('artbusgen_lite_category');
delete_option('artbusgen_lite_post_status');
delete_site_option('artbusgen_lite_post_status');
delete_option('artbusgen_lite_frequency');
delete_site_option('artbusgen_lite_frequency');
delete_option('artbusgen_lite_authoritative_site_1');
delete_site_option('artbusgen_lite_authoritative_site_1');

// Delete Transients
delete_transient('artbusgen_lite_is_generating');
delete_site_transient('artbusgen_lite_is_generating');

// Clear Cron Jobs
wp_clear_scheduled_hook('artbusgen_lite_generate_article_event');

