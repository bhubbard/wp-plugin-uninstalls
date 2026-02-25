<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('news_manager_general');
delete_site_option('news_manager_general');
delete_option('news_manager_permalinks');
delete_site_option('news_manager_permalinks');
delete_option('news_manager_capabilities');
delete_site_option('news_manager_capabilities');
delete_option('news_manager_version');
delete_site_option('news_manager_version');
delete_option('news_manager_activated_blogs');
delete_site_option('news_manager_activated_blogs');

