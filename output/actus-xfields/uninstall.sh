#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ACTUS_XF_VERSION'
wp option delete 'AXF_fieldnames'
wp option delete 'AXF_globals'
wp option delete 'AXF_fieldsets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'actus_xfields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'actus_xfields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'actus_xfields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'actus_xfields'"
