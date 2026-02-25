#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slkapi'
wp option delete 'slkwoo'
wp option delete 'slkwoo_passphrase'
wp option delete 'slkwoo_passphrase_lock'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slkwoo_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slkwoo_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slkwoo_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slkwoo_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slkwoo_addlicense'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slkwoo_addlicense'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slkwoo_addlicense'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slkwoo_addlicense'"
