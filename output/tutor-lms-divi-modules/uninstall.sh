#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_is_public_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_is_public_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_is_public_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_is_public_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tutor_enable_qa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tutor_enable_qa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tutor_enable_qa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tutor_enable_qa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
