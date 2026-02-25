<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('raek_api_key');
delete_site_option('raek_api_key');
delete_option('raek_plugin_activated');
delete_site_option('raek_plugin_activated');
delete_option('raek_cron_last_update');
delete_site_option('raek_cron_last_update');
delete_option('raek_activation_redirect');
delete_site_option('raek_activation_redirect');
delete_option('raek_plugin_agreement');
delete_site_option('raek_plugin_agreement');
delete_option('raek_plugin_setup');
delete_site_option('raek_plugin_setup');
delete_option('raek_error');
delete_site_option('raek_error');
delete_option('raek_plugin_review_prompt_dnd');
delete_site_option('raek_plugin_review_prompt_dnd');
delete_option('raek_plugin_activation_date');
delete_site_option('raek_plugin_activation_date');

