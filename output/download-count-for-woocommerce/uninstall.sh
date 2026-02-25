#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'downloadcountwoo_only_admin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlcwoo_downloads'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlcwoo_downloads'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlcwoo_downloads'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlcwoo_downloads'"
