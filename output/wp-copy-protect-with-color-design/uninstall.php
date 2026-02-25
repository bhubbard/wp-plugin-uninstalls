<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content_protect_plus_dir');
delete_site_option('content_protect_plus_dir');
delete_option('javascript-protection-proversion_dir');
delete_site_option('javascript-protection-proversion_dir');
delete_option('protect_plugin_value_click');
delete_site_option('protect_plugin_value_click');
delete_option('protect_plugin_value_select_text');
delete_site_option('protect_plugin_value_select_text');
delete_option('protect_plugin_value_subject');
delete_site_option('protect_plugin_value_subject');
delete_option('protect_plugin_value_color');
delete_site_option('protect_plugin_value_color');
delete_option('protect_plugin_value_user');
delete_site_option('protect_plugin_value_user');
delete_option('protect_plugin_value_admin');
delete_site_option('protect_plugin_value_admin');
delete_option('wp_content_plus_btn_f12');
delete_site_option('wp_content_plus_btn_f12');
delete_option('javascript_protection_proversion');
delete_site_option('javascript_protection_proversion');
delete_option('protect_plugin_value_print_no');
delete_site_option('protect_plugin_value_print_no');
delete_option('protect_plugin_value_pages');
delete_site_option('protect_plugin_value_pages');
delete_option('protect_plugin_value_posts');
delete_site_option('protect_plugin_value_posts');
delete_option('protect_plugin_value_include');
delete_site_option('protect_plugin_value_include');
delete_option('protect_plugin_value_include_posts');
delete_site_option('protect_plugin_value_include_posts');

