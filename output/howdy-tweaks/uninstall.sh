#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ht_options'
wp option delete 'ht_greeting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ht_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ht_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ht_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ht_options'"
