<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('super_easy_mm_status');
delete_site_option('super_easy_mm_status');
delete_option('super_easy_mm_whitelisted_ips');
delete_site_option('super_easy_mm_whitelisted_ips');
delete_option('super_easy_mm_whitelisted_roles');
delete_site_option('super_easy_mm_whitelisted_roles');
delete_option('super_easy_mm_background_color');
delete_site_option('super_easy_mm_background_color');
delete_option('super_easy_mm_main_block_background_color');
delete_site_option('super_easy_mm_main_block_background_color');
delete_option('super_easy_mm_bg_opacity');
delete_site_option('super_easy_mm_bg_opacity');
delete_option('super_easy_mm_text_color');
delete_site_option('super_easy_mm_text_color');
delete_option('super_easy_mm_button_color');
delete_site_option('super_easy_mm_button_color');
delete_option('super_easy_mm_button_hover_color');
delete_site_option('super_easy_mm_button_hover_color');
delete_option('super_easy_mm_contact_email');
delete_site_option('super_easy_mm_contact_email');
delete_option('super_easy_mm_copyright_text');
delete_site_option('super_easy_mm_copyright_text');
delete_option('super_easy_mm_copyright_text_color');
delete_site_option('super_easy_mm_copyright_text_color');
delete_option('super_easy_mm_background_image');
delete_site_option('super_easy_mm_background_image');
delete_option('super_easy_mm_header_text');
delete_site_option('super_easy_mm_header_text');
delete_option('super_easy_mm_logo');
delete_site_option('super_easy_mm_logo');
delete_option('super_easy_mm_paragraph_text');
delete_site_option('super_easy_mm_paragraph_text');
delete_option('super_easy_mm_button_text');
delete_site_option('super_easy_mm_button_text');
delete_option('super_easy_mm_paragraph_text_color');
delete_site_option('super_easy_mm_paragraph_text_color');
delete_option('super_easy_mm_header_text_color');
delete_site_option('super_easy_mm_header_text_color');
delete_option('super_easy_mm_button_text_color');
delete_site_option('super_easy_mm_button_text_color');
delete_option('super_easy_mm_button_text_hover_color');
delete_site_option('super_easy_mm_button_text_hover_color');
delete_option('super_easy_mm_facebook_url');
delete_site_option('super_easy_mm_facebook_url');
delete_option('super_easy_mm_twitter_url');
delete_site_option('super_easy_mm_twitter_url');
delete_option('super_easy_mm_instagram_url');
delete_site_option('super_easy_mm_instagram_url');
delete_option('super_easy_mm_linkedin_url');
delete_site_option('super_easy_mm_linkedin_url');
delete_option('super_easy_mm_activated');
delete_site_option('super_easy_mm_activated');
delete_option('super_easy_mm_meta_title');
delete_site_option('super_easy_mm_meta_title');
delete_option('super_easy_mm_meta_description');
delete_site_option('super_easy_mm_meta_description');

// Delete Transients
delete_transient('super_easy_mm_activated');
delete_site_transient('super_easy_mm_activated');

