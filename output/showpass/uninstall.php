<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('option_use_showpass_beta');
delete_site_option('option_use_showpass_beta');
delete_option('option_use_showpass_demo');
delete_site_option('option_use_showpass_demo');
delete_option('option_showpass_access_token');
delete_site_option('option_showpass_access_token');
delete_option('option_organization_id');
delete_site_option('option_organization_id');
delete_option('option_widget_color');
delete_site_option('option_widget_color');
delete_option('option_showpass_default_button_class');
delete_site_option('option_showpass_default_button_class');
delete_option('option_keep_shopping');
delete_site_option('option_keep_shopping');
delete_option('option_show_widget_description');
delete_site_option('option_show_widget_description');
delete_option('option_disable_verify_ssl');
delete_site_option('option_disable_verify_ssl');
delete_option('format_date');
delete_site_option('format_date');
delete_option('format_time');
delete_site_option('format_time');
delete_option('option_theme_dark');
delete_site_option('option_theme_dark');

