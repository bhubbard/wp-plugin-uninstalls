#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shownotes_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shownotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shownotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shownotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shownotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shownotesname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shownotesname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shownotesname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shownotesname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shownotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shownotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shownotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shownotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_content'"
