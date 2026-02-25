<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('himiPlugin_options');
delete_site_option('himiPlugin_options');
delete_option('himiPluginFilter_groups');
delete_site_option('himiPluginFilter_groups');
delete_option('himiPluginFilter_selected');
delete_site_option('himiPluginFilter_selected');
delete_option('himiPluginFilter_plugins');
delete_site_option('himiPluginFilter_plugins');
delete_option('himiPluginComment_comments');
delete_site_option('himiPluginComment_comments');

