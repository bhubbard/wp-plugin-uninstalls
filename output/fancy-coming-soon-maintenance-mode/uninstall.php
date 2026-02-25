<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fancy_coming_soon_preview');
delete_site_option('fancy_coming_soon_preview');
delete_option('fancy_coming_soon_uses_option');
delete_site_option('fancy_coming_soon_uses_option');
delete_option('fancy_coming_soon_background_color');
delete_site_option('fancy_coming_soon_background_color');
delete_option('fancy_coming_soon_background_repeat');
delete_site_option('fancy_coming_soon_background_repeat');
delete_option('fancy_coming_soon_background_position');
delete_site_option('fancy_coming_soon_background_position');
delete_option('fancy_coming_soon_background_cover');
delete_site_option('fancy_coming_soon_background_cover');
delete_option('fancy_coming_soon_background_image');
delete_site_option('fancy_coming_soon_background_image');
delete_option('fancy_coming_soon_page_custom_css');
delete_site_option('fancy_coming_soon_page_custom_css');
delete_option('fancy_coming_soon_custom_code_header');
delete_site_option('fancy_coming_soon_custom_code_header');
delete_option('fancy_coming_soon_content_color');
delete_site_option('fancy_coming_soon_content_color');
delete_option('fancy_coming_soon_plugin_logo');
delete_site_option('fancy_coming_soon_plugin_logo');
delete_option('fancy_coming_soon_plugin_logo_force_https');
delete_site_option('fancy_coming_soon_plugin_logo_force_https');
delete_option('fancy_coming_soon_percentage_completed');
delete_site_option('fancy_coming_soon_percentage_completed');
delete_option('fancy_coming_soon_page_heading');
delete_site_option('fancy_coming_soon_page_heading');
delete_option('fancy_coming_soon_page_content');
delete_site_option('fancy_coming_soon_page_content');
delete_option('fancy_coming_soon_mailchimp_form');
delete_site_option('fancy_coming_soon_mailchimp_form');
delete_option('fancy_coming_soon_mailchimp_form_url');
delete_site_option('fancy_coming_soon_mailchimp_form_url');
delete_option('fancy_coming_soon_social_twitter');
delete_site_option('fancy_coming_soon_social_twitter');
delete_option('fancy_coming_soon_social_facebook');
delete_site_option('fancy_coming_soon_social_facebook');
delete_option('fancy_coming_soon_social_instagram');
delete_site_option('fancy_coming_soon_social_instagram');
delete_option('fancy_coming_soon_social_whatsapp');
delete_site_option('fancy_coming_soon_social_whatsapp');
delete_option('fancy_coming_soon_social_email');
delete_site_option('fancy_coming_soon_social_email');
delete_option('fancy_coming_soon_page_footer');
delete_site_option('fancy_coming_soon_page_footer');
delete_option('fancy_coming_soon_custom_code_footer');
delete_site_option('fancy_coming_soon_custom_code_footer');

// Delete Transients
delete_transient('fancy_coming_soon_admin_notice');
delete_site_transient('fancy_coming_soon_admin_notice');

