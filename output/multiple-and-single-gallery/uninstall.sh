#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_and_3d_condition'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery-image'"
