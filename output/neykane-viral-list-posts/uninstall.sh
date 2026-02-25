#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_items_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_items_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_items_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_items_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_enable_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_enable_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_enable_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_enable_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_intro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_intro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_intro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_intro'"
