#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'download_theme_popup_status'
wp option delete 'dtwap_dismissible_plugin'
wp option delete 'dtwap_dismissible_plugin_expiration'
wp option delete 'dtwap_enable_bookmark'

