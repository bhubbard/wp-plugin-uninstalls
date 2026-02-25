#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giw_repositories'
wp option delete 'giw_general_settings'
wp option delete 'giw_uploaded_images'
wp option delete 'giw_metadata'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_source_url'"
