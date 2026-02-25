#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plugin_myfastapp_external_api_uri'
wp option delete 'plugin_myfastapp_live_config'
wp option delete 'plugin_myfastapp_app_config'
wp option delete 'plugin_myfastapp_menu_item'
wp option delete 'plugin_myfastapp_installed'

