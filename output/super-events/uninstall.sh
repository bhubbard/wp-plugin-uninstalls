#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_type_rules_flased_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'superevents_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'superevents_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'superevents_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'superevents_%'"
