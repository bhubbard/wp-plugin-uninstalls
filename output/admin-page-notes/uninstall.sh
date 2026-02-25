#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'display_notes_pages'
wp option delete 'display_notes_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gb_admin_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gb_admin_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gb_admin_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gb_admin_note'"
