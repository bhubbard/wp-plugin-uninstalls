<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wya11y_settings');
delete_site_option('wya11y_settings');
delete_option('easywpstuff_assesplus_booster_options');
delete_site_option('easywpstuff_assesplus_booster_options');
delete_option('wya11y_statement_page');
delete_site_option('wya11y_statement_page');
delete_option('wya11y_banner_states');
delete_site_option('wya11y_banner_states');
delete_option('wya11y_plugin_activated_at');
delete_site_option('wya11y_plugin_activated_at');
delete_option('wya11y_statement');
delete_site_option('wya11y_statement');
delete_option('wya11y_version');
delete_site_option('wya11y_version');
delete_option('wya11y_first_time_activated_plugin');
delete_site_option('wya11y_first_time_activated_plugin');

// Delete Transients
delete_transient('_wya11y_first_time_install');
delete_site_transient('_wya11y_first_time_install');
delete_transient('wya11y_first_time_install');
delete_site_transient('wya11y_first_time_install');

