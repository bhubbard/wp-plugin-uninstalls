#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcf-fields'
wp option delete 'wpcf-termmeta'
wp option delete 'wpcf-usermeta'
wp option delete 'wpcf-custom-types'
wp option delete 'wpcf-custom-taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_types_repeatable_field_group_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_types_repeatable_field_group_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_types_repeatable_field_group_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_types_repeatable_field_group_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_types_group_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_types_group_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_types_group_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_types_group_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'toolset-post-sortorder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'toolset-post-sortorder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'toolset-post-sortorder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'toolset-post-sortorder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'meta_box_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'meta_box_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'meta_box_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'meta_box_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_types_group_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_types_group_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_types_group_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_types_group_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_types_associated_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_types_associated_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_types_associated_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_types_associated_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_types_group_showfor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_types_group_showfor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_types_group_showfor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_types_group_showfor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'relationship'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'relationship'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'relationship'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'relationship'"
