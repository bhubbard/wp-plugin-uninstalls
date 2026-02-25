<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('asaaisaa_cache_bust');
delete_site_option('asaaisaa_cache_bust');
delete_option('asaaisaa_system_prompt');
delete_site_option('asaaisaa_system_prompt');
delete_option('asaaisaa_title');
delete_site_option('asaaisaa_title');
delete_option('asaaisaa_subtitle');
delete_site_option('asaaisaa_subtitle');
delete_option('asaaisaa_primary_color');
delete_site_option('asaaisaa_primary_color');
delete_option('asaaisaa_avatar_image_url');
delete_site_option('asaaisaa_avatar_image_url');
delete_option('asaaisaa_avatar_icon');
delete_site_option('asaaisaa_avatar_icon');
delete_option('asaaisaa_position');
delete_site_option('asaaisaa_position');
delete_option('asaaisaa_show_credit');
delete_site_option('asaaisaa_show_credit');
delete_option('asaaisaa_api_key');
delete_site_option('asaaisaa_api_key');
delete_option('asaaisaa_proactive_delay');
delete_site_option('asaaisaa_proactive_delay');
delete_option('asaaisaa_history_limit');
delete_site_option('asaaisaa_history_limit');
delete_option('asaaisaa_auto_insert');
delete_site_option('asaaisaa_auto_insert');
delete_option('asaaisaa_display_types');
delete_site_option('asaaisaa_display_types');

