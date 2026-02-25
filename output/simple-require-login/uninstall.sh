#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-yesno'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-yesno'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-yesno'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-yesno'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-ssl-yesno'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-ssl-yesno'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-ssl-yesno'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-ssl-yesno'"
