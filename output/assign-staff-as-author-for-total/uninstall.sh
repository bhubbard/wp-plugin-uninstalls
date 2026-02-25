#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'assign_staff_author_total'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpex_author_staff_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpex_author_staff_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpex_author_staff_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpex_author_staff_id'"
