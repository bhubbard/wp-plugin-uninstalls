#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ENCHANTIER_SETTINGS'
wp option delete 'ENCHANTIER_KEY'
wp option delete 'ENCHANTIER_PASSWORD'
wp option delete 'ENCHANTIER_NOHEADER'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EnChantier_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EnChantier_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EnChantier_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EnChantier_ignore_notice'"
