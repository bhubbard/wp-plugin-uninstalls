#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_buddydrive_user_quota'
wp option delete '_buddydrive_version'
wp option delete '_buddydrive_max_upload'
wp option delete '_buddydrive_allowed_extensions'

# Delete Transients
wp transient delete '_buddydrive_is_new_install'
wp transient delete '_buddydrive_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buddydrive_sharing_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buddydrive_sharing_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buddydrive_sharing_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buddydrive_sharing_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buddydrive_total_space'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buddydrive_total_space'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buddydrive_total_space'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buddydrive_total_space'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_buddydrive_sharing_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_buddydrive_sharing_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_buddydrive_sharing_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_buddydrive_sharing_groups'"
