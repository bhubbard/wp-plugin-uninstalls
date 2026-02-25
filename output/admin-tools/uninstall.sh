#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'options_for_disable_dev_auto_core_updates'
wp option delete 'options_for_disable_minor_auto_core_updates'
wp option delete 'options_for_disable_major_auto_core_updates'
wp option delete 'options_for_disable_translation_files_updates'
wp option delete 'options_for_disable_update_notification_emails'
wp option delete 'admin_tools_hidden'
wp option delete 'admin_user_hidden'
wp option delete 'admin_login_logo'
wp option delete 'menus_only_to'
wp option delete 'plugins_only_to'
wp option delete 'menu_items_list_to_hide'
wp option delete 'submenu_items_list_to_hide'
wp option delete 'plugin_items_list_to_hide'
wp option delete 'top_bar_only_to'
wp option delete 'hide_top_bar'
wp option delete 'admin_small_logo'
wp option delete 'options_for_top_bar_menus'
wp option delete 'add_site_menu'
wp option delete 'admin_notices_only_to'
wp option delete 'options_for_disable_update_admin_tools_plugin'
wp option delete 'options_for_disable_and_hide_wordpress_updates'
wp option delete 'options_for_disable_and_hide_plugins_updates'
wp option delete 'options_for_disable_and_hide_themes_updates'
wp option delete 'options_for_plugin_AdminTools'

