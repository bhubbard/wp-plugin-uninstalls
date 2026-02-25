#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'existing_field_groups'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_field_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_field_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_field_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_field_groups'"
