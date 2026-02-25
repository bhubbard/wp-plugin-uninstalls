<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpclean_plugin_options_archives_pages');
delete_site_option('wpclean_plugin_options_archives_pages');
delete_option('wpclean_plugin_options_attachments');
delete_site_option('wpclean_plugin_options_attachments');
delete_option('wpclean_plugin_options_comments');
delete_site_option('wpclean_plugin_options_comments');
delete_option('wpclean_plugin_options_header');
delete_site_option('wpclean_plugin_options_header');
delete_option('wpclean_plugin_options_images');
delete_site_option('wpclean_plugin_options_images');
delete_option('wpclean_plugin_options_interface');
delete_site_option('wpclean_plugin_options_interface');
delete_option('wpclean_plugin_options_pagination');
delete_site_option('wpclean_plugin_options_pagination');
delete_option('wpclean_plugin_options_posts');
delete_site_option('wpclean_plugin_options_posts');
delete_option('wpclean_plugin_options_profile');
delete_site_option('wpclean_plugin_options_profile');
delete_option('wpclean_plugin_options_rss');
delete_site_option('wpclean_plugin_options_rss');
delete_option('wpclean_plugin_options_search');
delete_site_option('wpclean_plugin_options_search');
delete_option('wpclean_plugin_options_security');
delete_site_option('wpclean_plugin_options_security');
delete_option('wpclean_plugin_options_update');
delete_site_option('wpclean_plugin_options_update');
delete_option('wpclean_plugin_options_widgets');
delete_site_option('wpclean_plugin_options_widgets');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_version_check');
wp_clear_scheduled_hook('wp_update_themes');
wp_clear_scheduled_hook('wp_update_plugins');

