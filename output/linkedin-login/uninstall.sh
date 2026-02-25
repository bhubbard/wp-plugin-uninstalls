#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pkli_basic_options'
wp option delete 'pkli_locked_content_options'
wp option delete 'pkli_buddypress_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pkli_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pkli_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pkli_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pkli_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pkli_linkedin_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pkli_linkedin_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pkli_linkedin_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pkli_linkedin_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pkli_linkedin_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pkli_linkedin_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pkli_linkedin_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pkli_linkedin_profile'"
