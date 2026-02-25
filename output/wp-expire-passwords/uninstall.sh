#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'days_until_expired'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'EP_password_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'EP_password_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'EP_password_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'EP_password_expires'"
