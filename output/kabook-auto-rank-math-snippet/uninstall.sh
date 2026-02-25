#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'karms_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_schema_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_schema_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_schema_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_schema_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_karms_auto_inject_override'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_karms_auto_inject_override'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_karms_auto_inject_override'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_karms_auto_inject_override'"
