<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('absacga_enabled');
delete_site_option('absacga_enabled');
delete_option('absacga_redirect_back');
delete_site_option('absacga_redirect_back');
delete_option('absacga_custom_redirect_url');
delete_site_option('absacga_custom_redirect_url');
delete_option('absacga_custom_login_url');
delete_site_option('absacga_custom_login_url');
delete_option('absacga_bypass_roles');
delete_site_option('absacga_bypass_roles');
delete_option('absacga_bypass_users');
delete_site_option('absacga_bypass_users');
delete_option('absacga_excluded_pages');
delete_site_option('absacga_excluded_pages');
delete_option('absacga_excluded_templates');
delete_site_option('absacga_excluded_templates');
delete_option('absacga_excluded_post_types');
delete_site_option('absacga_excluded_post_types');
delete_option('absacga_excluded_categories');
delete_site_option('absacga_excluded_categories');
delete_option('absacga_excluded_tags');
delete_site_option('absacga_excluded_tags');
delete_option('absacga_exclude_rss');
delete_site_option('absacga_exclude_rss');
delete_option('absacga_exclude_rest_api');
delete_site_option('absacga_exclude_rest_api');
delete_option('absacga_bypass_key');
delete_site_option('absacga_bypass_key');
delete_option('absacga_whitelist_ips');
delete_site_option('absacga_whitelist_ips');
delete_option('absacga_maintenance_mode');
delete_site_option('absacga_maintenance_mode');
delete_option('absacga_maintenance_message');
delete_site_option('absacga_maintenance_message');
delete_option('absacga_maintenance_title');
delete_site_option('absacga_maintenance_title');
delete_option('absacga_exclude_ajax');
delete_site_option('absacga_exclude_ajax');
delete_option('absacga_exclude_archives');
delete_site_option('absacga_exclude_archives');
delete_option('absacga_login_message');
delete_site_option('absacga_login_message');

