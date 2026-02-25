#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'h5p_export'
wp option delete 'learnpress_version'

# Delete Transients
wp transient delete 'dirsize_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_attachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_attachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_attachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_attachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_h5p_interact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_h5p_interact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_h5p_interact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_h5p_interact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_passing_grade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_passing_grade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_passing_grade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_passing_grade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_info_extra_fast_query'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_info_extra_fast_query'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_info_extra_fast_query'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_info_extra_fast_query'"
