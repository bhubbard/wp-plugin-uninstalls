#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_page_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_layout_tmp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_layout_tmp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_layout_tmp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_layout_tmp'"
