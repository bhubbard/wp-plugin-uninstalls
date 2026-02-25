#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'acf-rc-activation-date'
wp option delete 'acf-rc-dismiss-review-msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf-rc-uses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf-rc-uses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf-rc-uses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf-rc-uses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf-rc-review-msg-dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf-rc-review-msg-dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf-rc-review-msg-dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf-rc-review-msg-dismissed'"
