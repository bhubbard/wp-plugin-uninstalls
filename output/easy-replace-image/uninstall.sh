#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eri_cron'
wp option delete 'wp_attachment_pages_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eri_replacements'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eri_replacements'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eri_replacements'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eri_replacements'"
