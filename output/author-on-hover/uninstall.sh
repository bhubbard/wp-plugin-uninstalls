#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_aoh_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_aoh_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_aoh_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_aoh_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_aoh_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aoh_profile_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aoh_profile_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aoh_profile_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aoh_profile_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aoh_post_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aoh_post_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aoh_post_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aoh_post_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aoh_profile_card_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aoh_profile_card_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aoh_profile_card_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aoh_profile_card_options'"
