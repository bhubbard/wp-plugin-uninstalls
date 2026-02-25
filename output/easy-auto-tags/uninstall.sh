#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'min_ch'
wp option delete 'repeat_ch'
wp option delete 'exclude_word'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_results_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_results_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_results_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_results_tags'"
