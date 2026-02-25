#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'translation_tools_settings'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'

