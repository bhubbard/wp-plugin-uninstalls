#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'userdeck'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userdeck_guides_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userdeck_guides_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userdeck_guides_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userdeck_guides_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userdeck_account_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userdeck_account_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userdeck_account_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userdeck_account_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'userdeck_mailbox_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'userdeck_mailbox_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'userdeck_mailbox_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'userdeck_mailbox_id'"
