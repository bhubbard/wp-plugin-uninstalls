#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slwsu_is_active_grouper'
wp option delete 'slwsu_collection_grouper'
wp option delete 'slwsu_collection_delete_options'
wp option delete 'slwsu_collection_metaboxs'
wp option delete 'slwsu_collection_plugin_name'
wp option delete 'slwsu_collection_post_types'
wp option delete 'slwsu_collection_add_body_class'
wp option delete 'slwsu_collection_inline_styles'
wp option delete 'slwsu_collection_capability_type'
wp option delete 'slwsu_collection_post_type_supports'
wp option delete 'slwsu_collection_post_type_deregister'
wp option delete 'slwsu_collection_flush_rewrite'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'slwsu_collection_%'"

# Delete Transients
wp transient delete 'slwsu_collection_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
