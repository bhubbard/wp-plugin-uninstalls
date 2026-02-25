#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfp-topt'
wp option delete 'crp-opt'
wp option delete 'crp-nop'
wp option delete 'yhtmlc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related-cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related-cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related-cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related-cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'related-tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'related-tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'related-tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'related-tag'"
