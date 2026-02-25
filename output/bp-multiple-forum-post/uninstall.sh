#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_attachment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_attachment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_attachment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_attachment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_author_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_author_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_author_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_author_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_duplicate_of'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_duplicate_of'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_duplicate_of'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_duplicate_of'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_duplicates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_duplicates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_duplicates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_duplicates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_activity_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_activity_id'"
