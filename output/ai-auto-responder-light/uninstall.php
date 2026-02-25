<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aiar_light_api_key');
delete_site_option('aiar_light_api_key');
delete_option('aiar_light_disable_ai');
delete_site_option('aiar_light_disable_ai');
delete_option('aiar_light_business_description');
delete_site_option('aiar_light_business_description');
delete_option('aiar_light_selected_form');
delete_site_option('aiar_light_selected_form');
delete_option('aiar_light_conversation_logs');
delete_site_option('aiar_light_conversation_logs');

