#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'personalizer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'persona_primary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'persona_primary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'persona_primary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'persona_primary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'persona_secondary_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'persona_secondary_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'persona_secondary_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'persona_secondary_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'persona_sort_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'persona_sort_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'persona_sort_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'persona_sort_order'"
