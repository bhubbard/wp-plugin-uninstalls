#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basic_dev_tools_hide_admin_bar'
wp option delete 'basic_dev_tools_disable_theme_updates'
wp option delete 'basic_dev_tools_disable_plugin_updates'
wp option delete 'basic_dev_tools_disable_core_updates'

