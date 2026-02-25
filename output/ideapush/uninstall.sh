#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'idea_push_settings'
wp option delete '_site_transient_update_plugins'

# Delete Transients
wp transient delete 'ideapush-update'
wp transient delete 'ideapush-tab-memory'
wp transient delete 'northern_beaches_websites'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idea-attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idea-attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idea-attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idea-attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'current-status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'current-status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'current-status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'current-status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'up-voters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'up-voters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'up-voters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'up-voters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ideaPushVotesRemaining'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ideaPushVotesRemaining'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ideaPushVotesRemaining'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ideaPushVotesRemaining'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ideaPushImage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ideaPushImage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ideaPushImage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ideaPushImage'"
