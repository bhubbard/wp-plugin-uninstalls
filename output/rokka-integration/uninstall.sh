#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rokka_company_name'
wp option delete 'rokka_api_key'
wp option delete 'rokka_delete_previous'
wp option delete 'rokka_output_parsing'
wp option delete 'rokka_rokka_enabled'
wp option delete 'rokka_stack_prefix'
wp option delete 'rokka_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rokka_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rokka_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rokka_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rokka_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rokka_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rokka_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rokka_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rokka_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rokka_subject_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rokka_subject_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rokka_subject_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rokka_subject_area'"
