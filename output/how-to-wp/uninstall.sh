#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'wp_how_to_plugins_db_version'
wp option delete 'wp_how_to_favs_db_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

