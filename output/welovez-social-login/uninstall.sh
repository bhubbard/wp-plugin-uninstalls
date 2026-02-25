#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'welovez_login'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'welovez_login_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'welovez_login_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'welovez_login_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'welovez_login_email'"
