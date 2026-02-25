#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_custom_admin_interface_settings_GeneralSettings'
wp option delete 'wp_custom_admin_interface_settings_CustomCode'
wp option delete 'wp_custom_admin_interface_settings_CustomCodeFrontend'
wp option delete 'wp_custom_admin_interface_settings_MaintenancePage'
wp option delete 'wp_custom_admin_interface_settings_CustomDashboardWidget'
wp option delete 'wp_custom_admin_interface_settings_AdminColorScheme'
wp option delete 'wp_custom_admin_interface_settings_AdminMenu'
wp option delete 'wp_custom_admin_interface_settings_HidePlugins'
wp option delete 'wp_custom_admin_interface_settings_HideUsers'
wp option delete 'wp_custom_admin_interface_settings_HideSidebars'
wp option delete 'wp_custom_admin_interface_settings_AdminToolbar'
wp option delete 'wp_custom_admin_interface_settings'
wp option delete 'wp_custom_admin_interface_settings_HideMeta'
wp option delete 'wp_custom_admin_interface_settings_AdminNotice'

# Delete Transients
wp transient delete 'northern_beaches_websites'
wp transient delete 'wpcai_pro_notice_disable'
wp transient delete 'wpcai_welcome_notice_disable'

