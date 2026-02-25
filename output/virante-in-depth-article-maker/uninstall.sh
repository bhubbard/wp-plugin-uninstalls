#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'idg_headline'
wp option delete 'idg_alternativeheadline'
wp option delete 'idg_description'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idg_headline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idg_headline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idg_headline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idg_headline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idg_alternativeHeadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idg_alternativeHeadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idg_alternativeHeadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idg_alternativeHeadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idg_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idg_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idg_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idg_description'"
