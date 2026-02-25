#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optimizer_limit_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_startklar_optimazed_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_startklar_optimazed_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_startklar_optimazed_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_startklar_optimazed_flag'"
