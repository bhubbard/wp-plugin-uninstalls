#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'le_layout_settings'
wp option delete 'le_layout_settings_backup'
wp option delete 'layout_manager_sidebars'
wp option delete 'layout_engine_layout_settings'
wp option delete 'layout_manager_theme_options'

