#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpa_ow_json_url'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

