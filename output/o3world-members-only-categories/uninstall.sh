#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'o3_moc_cats'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'o3_moc_cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'o3_moc_cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'o3_moc_cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'o3_moc_cats'"
