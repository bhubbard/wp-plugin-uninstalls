#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'has_icons_migrated'
wp option delete 'highlight-and-share'
wp option delete 'highlight-and-share-block-editor-options'
wp option delete 'highlight-and-share-email-settings'
wp option delete 'highlight-and-share-image-options'
wp option delete 'highlight-and-share-theme-options'
wp option delete 'highlight-and-share-social-networks'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_hidden_color_sync_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_hidden_color_sync_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_hidden_color_sync_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_hidden_color_sync_notice'"
