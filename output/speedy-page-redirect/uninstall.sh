#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdd_spr_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gdd_speedy_page_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gdd_speedy_page_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gdd_speedy_page_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gdd_speedy_page_redirect'"
