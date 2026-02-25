<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('current_theme_supports_mas_static_content');
delete_site_option('current_theme_supports_mas_static_content');
delete_option('mas_static_content_queue_flush_rewrite_rules');
delete_site_option('mas_static_content_queue_flush_rewrite_rules');

