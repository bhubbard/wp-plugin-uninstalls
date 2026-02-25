#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phases_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phases_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phases_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phases_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phases_note'"
