<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_custom_admin_interface_settings_GeneralSettings');
delete_site_option('wp_custom_admin_interface_settings_GeneralSettings');
delete_option('wp_custom_admin_interface_settings_CustomCode');
delete_site_option('wp_custom_admin_interface_settings_CustomCode');
delete_option('wp_custom_admin_interface_settings_CustomCodeFrontend');
delete_site_option('wp_custom_admin_interface_settings_CustomCodeFrontend');
delete_option('wp_custom_admin_interface_settings_MaintenancePage');
delete_site_option('wp_custom_admin_interface_settings_MaintenancePage');
delete_option('wp_custom_admin_interface_settings_CustomDashboardWidget');
delete_site_option('wp_custom_admin_interface_settings_CustomDashboardWidget');
delete_option('wp_custom_admin_interface_settings_AdminColorScheme');
delete_site_option('wp_custom_admin_interface_settings_AdminColorScheme');
delete_option('wp_custom_admin_interface_settings_AdminMenu');
delete_site_option('wp_custom_admin_interface_settings_AdminMenu');
delete_option('wp_custom_admin_interface_settings_HidePlugins');
delete_site_option('wp_custom_admin_interface_settings_HidePlugins');
delete_option('wp_custom_admin_interface_settings_HideUsers');
delete_site_option('wp_custom_admin_interface_settings_HideUsers');
delete_option('wp_custom_admin_interface_settings_HideSidebars');
delete_site_option('wp_custom_admin_interface_settings_HideSidebars');
delete_option('wp_custom_admin_interface_settings_AdminToolbar');
delete_site_option('wp_custom_admin_interface_settings_AdminToolbar');
delete_option('wp_custom_admin_interface_settings');
delete_site_option('wp_custom_admin_interface_settings');
delete_option('wp_custom_admin_interface_settings_HideMeta');
delete_site_option('wp_custom_admin_interface_settings_HideMeta');
delete_option('wp_custom_admin_interface_settings_AdminNotice');
delete_site_option('wp_custom_admin_interface_settings_AdminNotice');

// Delete Transients
delete_transient('northern_beaches_websites');
delete_site_transient('northern_beaches_websites');
delete_transient('wpcai_pro_notice_disable');
delete_site_transient('wpcai_pro_notice_disable');
delete_transient('wpcai_welcome_notice_disable');
delete_site_transient('wpcai_welcome_notice_disable');

