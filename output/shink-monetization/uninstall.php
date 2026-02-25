<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shink_plugins_option_enabled');
delete_site_option('shink_plugins_option_enabled');
delete_option('shink_plugins_option_id');
delete_site_option('shink_plugins_option_id');
delete_option('shink_plugins_option_domain');
delete_site_option('shink_plugins_option_domain');
delete_option('shink_plugins_option_website_entry_enabled');
delete_site_option('shink_plugins_option_website_entry_enabled');
delete_option('shink_plugins_option_include_exclude_domains_choose');
delete_site_option('shink_plugins_option_include_exclude_domains_choose');
delete_option('shink_plugins_option_include_exclude_domains_value');
delete_site_option('shink_plugins_option_include_exclude_domains_value');
delete_option('shink_plugins_option_exclude_roles');
delete_site_option('shink_plugins_option_exclude_roles');

