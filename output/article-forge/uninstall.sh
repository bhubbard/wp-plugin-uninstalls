#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rewrite_rules'"
wp option delete 'rewrite_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ver'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_always_show_toc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_always_show_toc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_always_show_toc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_always_show_toc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_show_all_sections'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_show_all_sections'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_show_all_sections'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_show_all_sections'"
