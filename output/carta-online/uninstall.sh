#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'co_settings'
wp option delete 'rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carta-teacher-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carta-teacher-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carta-teacher-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carta-teacher-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'carta-field-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'carta-field-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'carta-field-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'carta-field-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'co_search'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'co_search'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'co_search'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'co_search'"
