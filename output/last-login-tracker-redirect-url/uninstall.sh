#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lltru_enable_tracking'
wp option delete 'lltru_redirect_404'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'llt_redirect_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'llt_redirect_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'llt_redirect_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'llt_redirect_last_login'"
