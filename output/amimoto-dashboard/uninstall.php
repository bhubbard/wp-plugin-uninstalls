<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('c3_settings');
delete_site_option('c3_settings');
delete_option('nginxchampuru-cache_expires');
delete_site_option('nginxchampuru-cache_expires');
delete_option('nginxchampuru-cache_levels');
delete_site_option('nginxchampuru-cache_levels');
delete_option('nginxchampuru-cache_dir');
delete_site_option('nginxchampuru-cache_dir');
delete_option('nginxchampuru-comment');
delete_site_option('nginxchampuru-comment');
delete_option('nginxchampuru-publish');
delete_site_option('nginxchampuru-publish');
delete_option('nginxchampuru-enable_flush');
delete_site_option('nginxchampuru-enable_flush');

