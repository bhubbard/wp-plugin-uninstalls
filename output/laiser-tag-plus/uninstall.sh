#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ltpoc_api_key'
wp option delete 'ltpoc_relevance_minimum'
wp option delete 'ltpoc_auto_fetch'
wp option delete 'ltpoc_flickrLicenseInfo'
wp option delete 'ltpoc_privacy_prefs'
wp option delete 'ltpoc_tag_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ltpoc_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ltpoc_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ltpoc_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ltpoc_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ltpoc_tag_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ltpoc_tag_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ltpoc_tag_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ltpoc_tag_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ltpoc_commit_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ltpoc_commit_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ltpoc_commit_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ltpoc_commit_id'"
