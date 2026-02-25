#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioi_post_identifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioi_post_identifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioi_post_identifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioi_post_identifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioi_social_network'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioi_social_network'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioi_social_network'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioi_social_network'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioi_original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioi_original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioi_original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioi_original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioi_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioi_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioi_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioi_link_url'"
