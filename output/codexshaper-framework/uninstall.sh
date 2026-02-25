#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csmf_post_types_cache'
wp option delete 'csmf_taxonomies_cache'
wp option delete 'csmf_module_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'csmf_metabox_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'csmf_metabox_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'csmf_metabox_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'csmf_metabox_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
