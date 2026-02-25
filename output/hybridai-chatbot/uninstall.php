<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hybridai_registration_url');
delete_site_option('hybridai_registration_url');
delete_option('hybridai_consent_mode');
delete_site_option('hybridai_consent_mode');
delete_option('hybridai_cmp_mode');
delete_site_option('hybridai_cmp_mode');
delete_option('hybridai_custom_script');
delete_site_option('hybridai_custom_script');
delete_option('hybridai_extended_page');
delete_site_option('hybridai_extended_page');
delete_option('hybridai_color_scheme');
delete_site_option('hybridai_color_scheme');
delete_option('hybridai_custom_welcome_message');
delete_site_option('hybridai_custom_welcome_message');
delete_option('hybridai_theme');
delete_site_option('hybridai_theme');
delete_option('hybridai_border_radius');
delete_site_option('hybridai_border_radius');
delete_option('hybridai_box_shadow');
delete_site_option('hybridai_box_shadow');
delete_option('hybridai_context_enabled');
delete_site_option('hybridai_context_enabled');
delete_option('hybridai_position');
delete_site_option('hybridai_position');
delete_option('hybridai_width');
delete_site_option('hybridai_width');
delete_option('hybridai_height');
delete_site_option('hybridai_height');
delete_option('hybridai_margin_x');
delete_site_option('hybridai_margin_x');
delete_option('hybridai_margin_y');
delete_site_option('hybridai_margin_y');
delete_option('hybridai_opacity');
delete_site_option('hybridai_opacity');
delete_option('hybridai_auto_open');
delete_site_option('hybridai_auto_open');
delete_option('hybridai_custom_context');
delete_site_option('hybridai_custom_context');
delete_option('hybridai_shared_secret');
delete_site_option('hybridai_shared_secret');
delete_option('hybridai_config_error');
delete_site_option('hybridai_config_error');
delete_option('hybridai_bot_id');
delete_site_option('hybridai_bot_id');
delete_option('hybridai_bot_url');
delete_site_option('hybridai_bot_url');
delete_option('hybridai_config_success');
delete_site_option('hybridai_config_success');
delete_option('hybridai_chatbot_id');
delete_site_option('hybridai_chatbot_id');
delete_option('hybridai_extended_mode');
delete_site_option('hybridai_extended_mode');

