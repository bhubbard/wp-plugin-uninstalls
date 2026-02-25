#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spec_comment_dbv'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_live'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_live'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_live'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_live'"
