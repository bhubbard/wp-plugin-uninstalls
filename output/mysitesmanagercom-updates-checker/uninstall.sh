#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'freshideas_wpui_settings'
wp option delete 'freshideas_wpui_settings_ver'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

