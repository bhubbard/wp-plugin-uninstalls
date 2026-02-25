#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lazyaico_db_v'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazyaico_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazyaico_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazyaico_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazyaico_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazyaico_reviewers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazyaico_reviewers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazyaico_reviewers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazyaico_reviewers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazyaico_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazyaico_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazyaico_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazyaico_comments'"
