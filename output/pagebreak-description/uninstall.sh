#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagebreak-description-position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pagebreak_descriptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pagebreak_descriptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pagebreak_descriptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pagebreak_descriptions'"
