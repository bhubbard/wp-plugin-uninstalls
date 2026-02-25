#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bodhi_svgs_settings'
wp option delete 'upload_space_check_disabled'
wp option delete 'bodhi_svgs_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inline_featured_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inline_featured_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inline_featured_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inline_featured_image'"
