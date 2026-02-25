#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_new_email'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%samaccountname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%samaccountname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%samaccountname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%samaccountname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_disabled_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_disabled_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_disabled_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_disabled_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%userprincipalname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%userprincipalname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%userprincipalname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%userprincipalname'"
