#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scs-opt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeatelier_discount_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_scs_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_scs_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_scs_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_scs_errors_%'"
