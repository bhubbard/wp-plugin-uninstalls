#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbptl_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbptl_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbptl_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbptl_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbptl_lng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbptl_lng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbptl_lng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbptl_lng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbptl_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbptl_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbptl_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbptl_input'"
