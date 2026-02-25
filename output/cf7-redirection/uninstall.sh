#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcf7_redirect_admin_notice_dismiss'
wp option delete 'wpcf7_redirect_banner_dismiss'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpcf7_redirect_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpcf7_redirect_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpcf7_redirect_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpcf7_redirect_%'"
