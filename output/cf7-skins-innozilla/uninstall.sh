#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icf7s_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'icf7s_skin_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'icf7s_skin_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'icf7s_skin_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'icf7s_skin_%'"
