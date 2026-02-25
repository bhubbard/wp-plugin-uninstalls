#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ms_twwall_plugin_general_settings'
wp option delete 'ms_twwall_plugin_postlayout_settings'
wp option delete 'ms_twwall_plugin_color_settings'

