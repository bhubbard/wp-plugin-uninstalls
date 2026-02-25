#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_supernetwork_parent_site'
wp option delete 'supernetwork_consolidated'
wp option delete 'supernetwork_post_types'
wp option delete 'supernetwork_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_supernetwork_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_supernetwork_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_supernetwork_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_supernetwork_share'"
