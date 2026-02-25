#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coder-limit-login-options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coder_first_time_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coder_first_time_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coder_first_time_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coder_first_time_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coder_is_logout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coder_is_logout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coder_is_logout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coder_is_logout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'coder_last_active_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'coder_last_active_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'coder_last_active_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'coder_last_active_time'"
