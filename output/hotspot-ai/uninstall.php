<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auth_signin_token');
delete_site_option('auth_signin_token');
delete_option('chatgptModel');
delete_site_option('chatgptModel');
delete_option('hotspot-switch');
delete_site_option('hotspot-switch');
delete_option('ai_select');
delete_site_option('ai_select');
delete_option('custom_proxy');
delete_site_option('custom_proxy');
delete_option('openai_key');
delete_site_option('openai_key');
delete_option('roleInstruction');
delete_site_option('roleInstruction');
delete_option('seo-analysis');
delete_site_option('seo-analysis');
delete_option('search-images');
delete_site_option('search-images');
delete_option('hotspot_ai_do_activation_redirect');
delete_site_option('hotspot_ai_do_activation_redirect');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('baijiahao_hotspot_cookies');
delete_site_option('baijiahao_hotspot_cookies');
delete_option('classic_editor_support_switch');
delete_site_option('classic_editor_support_switch');

// Delete Transients
delete_transient('hotspot_last_checked_time');
delete_site_transient('hotspot_last_checked_time');

