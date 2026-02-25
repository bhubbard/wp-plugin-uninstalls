#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scot_all_groups'
wp option delete 'scot_settings'

# Delete Transients
wp transient delete 'scot_kb_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scot_ai_last_request_%' OR option_name LIKE '_site_transient_scot_ai_last_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_scot_ai_count_messages_%' OR option_name LIKE '_site_transient_scot_ai_count_messages_%'"
wp transient delete 'scot_test'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'co_instructor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'co_instructor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'co_instructor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'co_instructor'"
