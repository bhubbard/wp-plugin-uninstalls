#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmx_revision_options'
wp option delete 'wp_revision_master_activate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tmxrm_revision_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tmxrm_revision_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tmxrm_revision_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tmxrm_revision_limit'"
