#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'photo_collage_scan_cache_version'
wp option delete 'photo_collage_uninstall_preference'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'photo_collage_block_count'

