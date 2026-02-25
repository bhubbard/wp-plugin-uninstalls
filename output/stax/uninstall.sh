#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stax-render-status'
wp option delete 'stax-version'
wp option delete 'stax_options'
wp option delete 'stax-upgrades'
wp option delete 'stax_editor_theme'
wp option delete 'stax_color_picker'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'stax-default-templates'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

