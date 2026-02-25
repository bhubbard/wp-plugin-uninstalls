#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickeditnotes_enabled_post_types'
wp option delete 'qen_enabled_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quickeditnotes_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quickeditnotes_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quickeditnotes_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quickeditnotes_notes'"
