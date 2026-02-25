#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-heading'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-heading'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-heading'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-heading'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-message'"
