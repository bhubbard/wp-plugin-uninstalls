#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cjtplusinstaller'
wp option delete '__existing_cjt_user'
wp option delete 'meta-box-order_cjtoolbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__CJT-BLOCK-ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__CJT-BLOCK-ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__CJT-BLOCK-ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__CJT-BLOCK-ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'closedpostboxes_cjtoolbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'closedpostboxes_cjtoolbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'closedpostboxes_cjtoolbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'closedpostboxes_cjtoolbox'"
