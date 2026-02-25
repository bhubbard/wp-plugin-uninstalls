#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arc_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arc_restricted_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arc_restricted_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arc_restricted_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arc_restricted_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arc_restricted_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arc_restricted_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arc_restricted_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arc_restricted_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arc_restricted_category_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arc_restricted_category_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arc_restricted_category_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arc_restricted_category_value'"
