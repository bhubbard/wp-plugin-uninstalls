#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hxh_secretkey'
wp option delete 'hxh_tag'
wp option delete 'hxh_link'
wp option delete 'hxh_poster'
wp option delete 'hxh_subtitle'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hxh_tag%'"
wp option delete 'hxh_cachetime'
wp option delete 'hxh_restat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_lcache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_lcache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_lcache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_lcache'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_data'"
