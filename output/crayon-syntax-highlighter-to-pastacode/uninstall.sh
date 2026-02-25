#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_c2p_log'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_c2p-found'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_c2p-found'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_c2p-found'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_c2p-found'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cp2-old-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cp2-old-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cp2-old-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cp2-old-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_c2p-old-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_c2p-old-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_c2p-old-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_c2p-old-content'"
