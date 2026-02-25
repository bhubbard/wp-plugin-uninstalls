#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpuv_hide_plugin'
wp option delete 'wpuv_change_update_text'
wp option delete 'wpuv_change_updates_heading'

# Delete Transients
wp transient delete 'update_core'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

