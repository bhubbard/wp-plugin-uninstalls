#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'U_S_C'

# Delete Transients
wp transient delete 'bainternetNews'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'U_S_C_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'U_S_C_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'U_S_C_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'U_S_C_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'U_S_C_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'U_S_C_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'U_S_C_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'U_S_C_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'U_S_C_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'U_S_C_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'U_S_C_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'U_S_C_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'U_S_C_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'U_S_C_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'U_S_C_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'U_S_C_message'"
