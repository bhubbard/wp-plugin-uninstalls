#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edet_load_default'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edet_properties'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edet_properties'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edet_properties'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edet_properties'"
