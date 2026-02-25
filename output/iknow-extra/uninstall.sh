#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_extra'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vote_yea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vote_yea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vote_yea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vote_yea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vote_nay'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vote_nay'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vote_nay'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vote_nay'"
