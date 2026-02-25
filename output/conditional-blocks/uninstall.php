<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('conditional_blocks_developer_mode');
delete_site_option('conditional_blocks_developer_mode');
delete_option('conditional_blocks_open_from_toolbar');
delete_site_option('conditional_blocks_open_from_toolbar');
delete_option('conditional_blocks_only_installed_integrations');
delete_site_option('conditional_blocks_only_installed_integrations');
delete_option('conditional_blocks_general');
delete_site_option('conditional_blocks_general');
delete_option('conditional_blocks_ipinfo_api_key');
delete_site_option('conditional_blocks_ipinfo_api_key');

