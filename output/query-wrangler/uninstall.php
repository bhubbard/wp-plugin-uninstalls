<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qw_plugin_version');
delete_site_option('qw_plugin_version');
delete_option('qw_edit_theme');
delete_site_option('qw_edit_theme');
delete_option('qw_live_preview');
delete_site_option('qw_live_preview');
delete_option('qw_show_silent_meta');
delete_site_option('qw_show_silent_meta');
delete_option('qw_meta_value_field_handler');
delete_site_option('qw_meta_value_field_handler');
delete_option('qw_widget_theme_compat');
delete_site_option('qw_widget_theme_compat');

// Delete Transients
delete_transient('query_wrangler_meta_keys_cache');
delete_site_transient('query_wrangler_meta_keys_cache');

