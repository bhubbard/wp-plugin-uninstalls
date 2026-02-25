#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pta_member_categories'
wp option delete 'pta_directory_options'
wp option delete 'pta_md_datatables_enabled'

# Delete Transients
wp transient delete 'pta_md_last_submit'
wp transient delete 'pta_md_last_ip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pta_member_directory_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pta_member_directory_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pta_member_directory_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pta_member_directory_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pta_member_directory_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pta_member_directory_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pta_member_directory_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pta_member_directory_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'member_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'member_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'member_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'member_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'member_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'member_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'member_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'member_category'"
