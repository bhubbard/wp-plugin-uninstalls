#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w2w_options'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'w2w_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'w2w_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'w2w_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'w2w_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
