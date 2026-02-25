#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'markitup_imagealign'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'markdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'markdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'markdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'markdown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_markdown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_markdown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_markdown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_markdown'"
