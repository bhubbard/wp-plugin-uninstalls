<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('optin_timer');
delete_site_option('optin_timer');
delete_option('optin_type');
delete_site_option('optin_type');
delete_option('lightbox-layout');
delete_site_option('lightbox-layout');
delete_option('flyer-layout');
delete_site_option('flyer-layout');
delete_option('stickytop-layout');
delete_site_option('stickytop-layout');
delete_option('wp_editor_data');
delete_site_option('wp_editor_data');
delete_option('post_id');
delete_site_option('post_id');
delete_option('page_id');
delete_site_option('page_id');
delete_option('optin_session_value');
delete_site_option('optin_session_value');
delete_option('optin_session_input');
delete_site_option('optin_session_input');
delete_option('optin_mailchimp_api');
delete_site_option('optin_mailchimp_api');
delete_option('optin_mailchimp_content');
delete_site_option('optin_mailchimp_content');
delete_option('optin_upload_media');
delete_site_option('optin_upload_media');
delete_option('layout_checkbox');
delete_site_option('layout_checkbox');
delete_option('layout_custom');
delete_site_option('layout_custom');
delete_option('is_home');
delete_site_option('is_home');
delete_option('mc_list');
delete_site_option('mc_list');

