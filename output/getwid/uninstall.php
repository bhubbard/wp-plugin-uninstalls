<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('getwid_load_assets_on_demand');
delete_site_option('getwid_load_assets_on_demand');
delete_option('getwid_move_css_to_head');
delete_site_option('getwid_move_css_to_head');
delete_option('getwid_recaptcha_v2_site_key');
delete_site_option('getwid_recaptcha_v2_site_key');
delete_option('getwid_recaptcha_v2_secret_key');
delete_site_option('getwid_recaptcha_v2_secret_key');
delete_option('getwid_contact_form_recipient_email');
delete_site_option('getwid_contact_form_recipient_email');
delete_option('getwid_google_api_key');
delete_site_option('getwid_google_api_key');
delete_option('getwid_instagram_token');
delete_site_option('getwid_instagram_token');
delete_option('getwid_instagram_cache_timeout');
delete_site_option('getwid_instagram_cache_timeout');
delete_option('getwid_mailchimp_api_key');
delete_site_option('getwid_mailchimp_api_key');
delete_option('audiences_list_chash');
delete_site_option('audiences_list_chash');
delete_option('getwid_section_content_width');
delete_site_option('getwid_section_content_width');
delete_option('getwid_smooth_animation');
delete_site_option('getwid_smooth_animation');
delete_option('getwid_instagram_token_cron_error_message');
delete_site_option('getwid_instagram_token_cron_error_message');
delete_option('getwid_db_version');
delete_site_option('getwid_db_version');
delete_option('getwid_db_version_history');
delete_site_option('getwid_db_version_history');

// Delete Transients
delete_transient('getwid_instagram_response_data');
delete_site_transient('getwid_instagram_response_data');
delete_transient('getwid_templates_response_data');
delete_site_transient('getwid_templates_response_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('getwid_refresh_instagram_token');

