#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_next_post_activation_code'
wp option delete '_winpm_next_post_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'svc_next_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'svc_next_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'svc_next_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'svc_next_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'svc_related_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'svc_related_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'svc_related_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'svc_related_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'svc_next_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'svc_next_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'svc_next_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'svc_next_exclude'"
