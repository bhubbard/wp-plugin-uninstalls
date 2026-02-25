#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gloryseo_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gloryseo_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gloryseo_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gloryseo_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gloryseo_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gloryseo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gloryseo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gloryseo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gloryseo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gloryseo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gloryseo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gloryseo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gloryseo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gloryseo_seo_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gloryseo_seo_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gloryseo_seo_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gloryseo_seo_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gloryseo_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gloryseo_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gloryseo_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gloryseo_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gloryseo_twitter_card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gloryseo_twitter_card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gloryseo_twitter_card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gloryseo_twitter_card'"
