#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpm_template_manager_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpm_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpm_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpm_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpm_page_template'"
