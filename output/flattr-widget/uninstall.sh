#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flattr_author_uid'
wp option delete 'flattr_uid'
wp option delete 'flattr_compact'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flattr_uid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flattr_uid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flattr_uid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flattr_uid'"
