#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'better_speed_plugin_loaded'
wp option delete 'better_speed_setup_theme'
wp option delete 'better-speed-settings'

