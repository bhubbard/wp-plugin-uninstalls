#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpne_event_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpne_event_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpne_event_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpne_event_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpne_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpne_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpne_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpne_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
