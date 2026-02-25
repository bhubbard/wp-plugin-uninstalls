#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'efs-settings'
wp option delete 'efs-slides'
wp option delete 'efs-images'
wp option delete 'efs-settings-group'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'efslider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'efslider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'efslider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'efslider'"
