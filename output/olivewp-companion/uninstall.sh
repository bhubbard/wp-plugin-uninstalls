#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trending_posts_value'
wp option delete 'spice_starter_sites_value'
wp option delete 'recommended_actions'
wp option delete 'fs_debug_mode'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

