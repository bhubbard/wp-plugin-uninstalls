#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'uikit-editor-blocks_uikit_theme'
wp option delete 'uikit-editor-blocks_exclude_load_uikit_components'

