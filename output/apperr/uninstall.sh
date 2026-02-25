#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'baseplugin_installed'
wp option delete 'apperr_options_init'
wp option delete 'baseplugin_version'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

