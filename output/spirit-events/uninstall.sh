#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tssev_options'
wp option delete 'tssev_db_version'
wp option delete 'rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'include_in_main_loop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'include_in_main_loop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'include_in_main_loop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'include_in_main_loop'"
