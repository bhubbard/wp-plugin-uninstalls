#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alt_bot_version'
wp option delete 'alt_bot_settings'

# Delete Transients
wp transient delete 'alt_bot_stats_cache'
wp transient delete 'alt_bot_bulk_progress'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
