#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_linkedin_autopublish_settings'
wp option delete 'wp_linkedin_autopublish_auth_settings'

# Delete Transients
wp transient delete 'northern_beaches_websites'
wp transient delete 'wp_linkedin_autopublish_get_companies'
wp transient delete 'wp_linkedin_autopublish_get_profile'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_linkedin_share_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_linkedin_share_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_linkedin_share_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_linkedin_share_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dont_share_post_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dont_share_post_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dont_share_post_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dont_share_post_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_profile_selection_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_profile_selection_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_profile_selection_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_profile_selection_linkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sent_to_linkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sent_to_linkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sent_to_linkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sent_to_linkedin'"
