#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ms_fbwall_plugin_general_settings'
wp option delete 'ms_fbwall_plugin_postlayout_settings'
wp option delete 'ms_fbwall_plugin_color_settings'
wp option delete 'ms_fbwall_plugin_token_settings'

