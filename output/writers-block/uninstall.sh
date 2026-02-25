#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grepwords_cse_options'
wp option delete 'GCS_headline'
wp option delete 'GCS_alternativeheadline'
wp option delete 'GCS_description'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'GCS_headline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'GCS_headline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'GCS_headline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'GCS_headline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'GCS_alternativeHeadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'GCS_alternativeHeadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'GCS_alternativeHeadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'GCS_alternativeHeadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'GCS_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'GCS_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'GCS_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'GCS_description'"
