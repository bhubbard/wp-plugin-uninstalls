#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'narrative_last_request'

# Delete Transients
wp transient delete 'narratibe_update_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'narrative_post_script'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'narrative_post_script'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'narrative_post_script'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'narrative_post_script'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_narrative_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_narrative_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_narrative_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_narrative_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_narrative_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_narrative_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_narrative_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_narrative_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_narrative_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_narrative_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_narrative_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_narrative_meta_keywords'"
