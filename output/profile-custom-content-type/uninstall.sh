#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Profile_CCT_settings'
wp option delete 'Profile_CCT_taxonomy'
wp option delete 'Profile_CCT_form_fields'
wp option delete 'Profile_CCT_page_fields'
wp option delete 'Profile_CCT_list_page'
wp option delete 'Profile_CCT_form_fields_bench'
wp option delete 'Profile_CCT_form_fields_side'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'Profile_CCT_%'"

# Delete Transients
wp transient delete 'profile_cct_name_list'
wp transient delete 'Profile_CCT_needs_refresh'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_cct'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_cct'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_cct'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_cct'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'profile_cct_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'profile_cct_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'profile_cct_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'profile_cct_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
