#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'initial_letter_plugin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'initial_letter_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'initial_letter_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'initial_letter_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'initial_letter_enable'"
