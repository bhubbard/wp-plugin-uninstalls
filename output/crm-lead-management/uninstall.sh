#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trsleadmgmt_general_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'trsleadmgmt_commentsdata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'trsleadmgmt_commentsdata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'trsleadmgmt_commentsdata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'trsleadmgmt_commentsdata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%email'"
