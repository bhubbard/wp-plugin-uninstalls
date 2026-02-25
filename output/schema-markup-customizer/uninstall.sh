#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dyxperts_selected_post_types'
wp option delete 'dyxperts_output_location'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_schema_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_schema_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_schema_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_schema_markup'"
