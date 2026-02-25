#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmr_posts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpmr_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpmr_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpmr_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpmr_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmr_input_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmr_input_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmr_input_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmr_input_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmr_label_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmr_label_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmr_label_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmr_label_key'"
