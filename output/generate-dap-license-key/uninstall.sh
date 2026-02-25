#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'daptlk_vs_append_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'daptlk_vs_license_dap_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'daptlk_vs_license_dap_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'daptlk_vs_license_dap_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'daptlk_vs_license_dap_key'"
