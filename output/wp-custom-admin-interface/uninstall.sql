-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_custom_admin_interface_settings_GeneralSettings', 'wp_custom_admin_interface_settings_CustomCode', 'wp_custom_admin_interface_settings_CustomCodeFrontend', 'wp_custom_admin_interface_settings_MaintenancePage', 'wp_custom_admin_interface_settings_CustomDashboardWidget', 'wp_custom_admin_interface_settings_AdminColorScheme', 'wp_custom_admin_interface_settings_AdminMenu', 'wp_custom_admin_interface_settings_HidePlugins', 'wp_custom_admin_interface_settings_HideUsers', 'wp_custom_admin_interface_settings_HideSidebars', 'wp_custom_admin_interface_settings_AdminToolbar', 'wp_custom_admin_interface_settings', 'wp_custom_admin_interface_settings_HideMeta', 'wp_custom_admin_interface_settings_AdminNotice', 'northern_beaches_websites', 'wpcai_pro_notice_disable', 'wpcai_welcome_notice_disable');

