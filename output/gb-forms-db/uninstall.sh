#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gbfdb_enabled'
wp option delete 'gbfdb_first_activate_plugins'
wp option delete 'gbfdp_supported_plugins'
wp option delete 'gbfdb_supported_plugins'
wp option delete 'gbfdb_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_elementor_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_wpcf7_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_pojo_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_ninja_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_gravity_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_forms_%'"

# Clear Cron Jobs
wp cron event delete 'gbfdb_check_new_leads'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_API_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_API_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_API_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_API_status'"
